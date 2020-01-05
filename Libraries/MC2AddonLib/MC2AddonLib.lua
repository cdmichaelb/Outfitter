----------------------------------------
local AddonName, Addon = ...
Addon.AddonPath = "Interface\\Addons\\"..AddonName.."\\"
----------------------------------------

function Addon:new(methodTable, ...)
	local object

	if methodTable.New then
		object = methodTable:New(...)
	else
		object = {}
	end

	self:initObject(object, methodTable, ...)

	return object
end

function Addon:initObject(object, class, ...)
	assert(type(class) == "table", "table expected")

	local methodTable = class
	if methodTable._class_meta then
		methodTable = methodTable._class_meta
	end

	if methodTable.__index then
		setmetatable(object, methodTable)

		if object.construct then
			object:construct(...)
		elseif object.Construct then
			object:Construct(...)
		end
	else
		for k, v in pairs(self.Object) do
			object[k] = v
		end

		object:inheritOver(methodTable, ...)
	end

	return object
end

function Addon:duplicateTable(table, recurse, destTable)
	if not table then
		return nil
	end

	local result

	if destTable then
		assert(type(destTable) == "table", "table expected for destTable")
		result = destTable
	else
		result = {}
	end

	if recurse then
		for key, value in pairs(table) do
			if type(value) == "table" then
				result[key] = self:duplicateTable(value, true)
			else
				result[key] = value
			end
		end
	else
		self:copyTable(result, table)
	end

	return result
end

function Addon:copyTable(destTable, table)
	for key, value in pairs(table) do
		destTable[key] = value
	end
end

function Addon:eraseTable(table)
	return wipe(table)
end

function Addon:recycleTable(table)
	if table then
		return wipe(table)
	else
		return {}
	end
end

function Addon:hookScript(frame, scriptID, func)
	if not frame:GetScript(scriptID) then
		frame:SetScript(scriptID, func)
	else
		frame:HookScript(scriptID, func)
	end
end

function Addon:newClass(inherits)
	local class = {}
	setmetatable(class, inherits or Addon.ObjectMetaTable)

	local classMeta = {
		__index = class
	}

	class._class_meta = classMeta

	return class
end

-- Old name compatibility
Addon.New = Addon.new
Addon.DuplicateTable  = Addon.duplicateTable
Addon.CopyTable  = Addon.copyTable
Addon.EraseTable  = Addon.eraseTable
Addon.RecycleTable  = Addon.recycleTable
Addon.HookScript  = Addon.hookScript

----------------------------------------
Addon.Object = {}
Addon.ObjectMetaTable = {__index = Addon.Object}
----------------------------------------

function Addon.Object:inheritOver(methodTable, ...)
	for key, value in pairs(methodTable) do
		if self[key] then
			if not self.inherited then
				self.inherited = {}
				self.Inherited = self.inherited
			end

			self.inherited[key] = self[key]
		end

		self[key] = value
	end

	if methodTable.construct then
		methodTable.construct(self, ...)
	elseif methodTable.Construct then
		methodTable.Construct(self, ...)
	end
end

function Addon.Object:inherit(methodTable, ...)
	for key, value in pairs(methodTable) do
		if self[key] then
			if not self.inherited then
				self.inherited = {}
				self.Inherited = self.inherited
			end

			if not self.inherited[key] then
				self.inherited[key] = value
			end
		else
			self[key] = value
		end
	end

	if methodTable.construct then
		methodTable.construct(self, ...)
	elseif methodTable.Construct then
		methodTable.Construct(self, ...)
	end
end

Addon.Object.Inherit = Addon.Object.inherit
Addon.Object.InheritOver = Addon.Object.inheritOver

Addon.Inherit = Addon.Object.Inherit
Addon.InheritOver = Addon.Object.InheritOver
Addon.inherit = Addon.Object.inherit
Addon.inheritOver = Addon.Object.inheritOver

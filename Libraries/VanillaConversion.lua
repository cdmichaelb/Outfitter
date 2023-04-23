if C_Container == nil then
	C_Container = {}
	-- Create an autoload function that will try to call the global namespace
	setmetatable(C_Container, {__index = function (t, funcname, args) return _G[funcname] end } )
	function C_Container.GetContainerItemInfo(bagIndex, slotIndex)
		icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID, isBound = GetContainerItemInfo(bagIndex, slotIndex)
		containerItemInfo = {
			["iconFileID"] = icon,
			["stackCount"] = itemCount,
			["isLocked"] = locked,
			["quality"] = quality,
			["isReadable"] = readable,
			["hasLoot"] = lootable,
			["hyperlink"] = itemLink,
			["isFiltered"] = isFiltered,
			["hasNoValue"] = noValue,
			["itemID"] = itemID,
			["isBound"] = isBound
		};
		return containerItemInfo
	end
end

if C_Minimap == nil then
	C_Minimap = {}
	-- Create an autoload function that will try to call the global namespace
	setmetatable(C_Minimap, {__index = function (t, funcname, args) return _G[funcname] end } )
	function C_Minimap.SetTracking(vIndex, pEnabled)
		-- pEnabled was sometimes set to 1 instead of true. This forces true/false
		return SetTracking(vIndex, pEnabled == true or pEnabled == 1)
	end
end

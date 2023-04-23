if C_Container == nil then
	C_Container = {}
	----[[
	-- Create an autoload function that will try to call the global namespace
	setmetatable(C_Container, {__index = function (t, funcname, args) return _G[funcname] end } )
	--]]
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
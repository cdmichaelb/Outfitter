if C_Container == nil then
	C_Container = {}
	function C_Container.GetContainerItemLink(bagIndex, slotIndex)
		return GetContainerItemLink(bagIndex, slotIndex)
	end
	function C_Container.GetContainerItemInfo(bagIndex, slotIndex)
		return GetContainerItemInfo(bagIndex, slotIndex)
	end
	function C_Container.GetContainerNumSlots(vBagIndex)
		return GetContainerNumSlots(vBagIndex)
	end
	function C_Container.GetContainerNumFreeSlots(vBagIndex)
		return GetContainerNumFreeSlots(vBagIndex)
	end
	function C_Container.GetContainerItemInfo(bagIndex, slotIndex)
		icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID, isBound = GetContainerItemInfo(bagIndex, slotIndex)
		containerItemInfo = {
			["iconFileId"] = icon,
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
	function C_Container.PickupContainerItem(containerIndex, slotIndex)
		return PickupContainerItem(containerIndex, slotIndex)
	end
	function C_Container.ContainerIDToInventoryID(pBagIndex)
		return ContainerIDToInventoryID(pBagIndex)
	end
	function C_Container.ShowContainerSellCursor(BagIndex, BagSlotIndex)
		return ShowContainerSellCursor(BagIndex, BagSlotIndex)
	end
	function C_Container.UseContainerItem(BagIndex, BagSlotIndex)
		return UseContainerItem(BagIndex, BagSlotIndex)
	end
end

if C_Minimap == nil then
	C_Minimap = {}
	function C_Minimap.GetNumTrackingTypes()
		return GetNumTrackingTypes()
	end
	function C_Minimap.GetTrackingInfo(vIndex)
		return GetTrackingInfo(vIndex)
	end
	function C_Minimap.SetTracking(vIndex, pEnabled)
		-- pEnabled was sometimes set to 1 instead of true. This forces true/false
		return SetTracking(vIndex, pEnabled == true or pEnabled == 1)
	end
end
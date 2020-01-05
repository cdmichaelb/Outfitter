----------------------------------------
-- General
----------------------------------------

function Outfitter:FindNextCooldownItem(pItemCodes, pIgnoreSwapCooldown)
	local vInventoryCache = self:GetInventoryCache()
	local vBestItem, vBestTime
	
	for _, vItemCode in ipairs(pItemCodes) do
		if type(vItemCode) == "string" then
			local vItemName, vItemLink = GetItemInfo(vItemCode)
			
			if vItemLink then
				vItemCode = self:ParseItemLink2(vItemLink)[1]
			end
		end
		
		local vItems = vItemCode and vInventoryCache.ItemsByCode[vItemCode]
		
		if vItems then
			for _, vItemInfo in ipairs(vItems) do
				local vStart, vDuration, vEnabled
				
				if vItemInfo.Location.BagIndex then
					vStart, vDuration, vEnabled = GetContainerItemCooldown(vItemInfo.Location.BagIndex, vItemInfo.Location.BagSlotIndex)
				elseif vItemInfo.Location.SlotID then
					vStart, vDuration, vEnabled = GetInventoryItemCooldown("player", vItemInfo.Location.SlotID)
				end
				
				local vRemainingTime
				
				if vEnabled == 1 and vStart ~= 0 then
					local vElapsed = GetTime() - vStart
					vRemainingTime = vDuration - vElapsed
				elseif self:ItemHasUseFeature(vItemInfo.Link) then
					vRemainingTime = 0
				else
					vRemainingTime = 30 -- Items without a /use are just considered to be 30 secs so that they have lowest priority
				end
				
				-- If it's in the bag then the minimum is 30 secs
				
				if vItemInfo.Location.BagIndex
				and not pIgnoreSwapCooldown
				and vRemainingTime < 30 then
					vRemainingTime = 30
				end
				
				-- Compare it to the current result
				
				if not vBestTime or vRemainingTime < vBestTime then
					vBestItem = vItemInfo
					vBestTime = vRemainingTime
				end
			end
		end
	end
	
	return vBestItem, vBestTime
end

function Outfitter:InventorySlotIsEmpty(pInventorySlot)
	return GetInventoryItemTexture("player", self.cSlotIDs[pInventorySlot]) == nil
end

function Outfitter:GetBagItemInfo(bagIndex, slotIndex)
	local itemLink = GetContainerItemLink(bagIndex, slotIndex)
	if not itemLink then
		return
	end

	local itemInfo = self:GetItemInfoFromLink(itemLink)
	if not itemInfo then
		return
	end

	local location = ItemLocation:CreateFromBagAndSlot(bagIndex, slotIndex)

	itemInfo.Texture = GetContainerItemInfo(bagIndex, slotIndex)
	-- itemInfo.Gem1, itemInfo.Gem2, itemInfo.Gem3, itemInfo.Gem4 = GetContainerItemGems(bagIndex, slotIndex)
	itemInfo.AzeriteCodes = self:GetAzeriteCodesForLocation(location)
	itemInfo.Location = {BagIndex = bagIndex, BagSlotIndex = slotIndex}
	
	return itemInfo
end

function Outfitter:GetBagItemLinkInfo(bagIndex, slotIndex)
	local itemLink = GetContainerItemLink(bagIndex, slotIndex)
	
	if not itemLink then
		return
	end
	
	return self:ParseItemLink2(itemLink)
end

function Outfitter:GetBagItemInvType(bagIndex, slotIndex)
	local itemLink = GetContainerItemLink(bagIndex, slotIndex)
	
	if not itemLink then
		return
	end
	
	local _, _, _, _, _, _, _, _, itemInvType = GetItemInfo(itemLink)
	
	return itemInvType
end

function Outfitter:GetItemLocationLink(pItemLocation)
	if not pItemLocation then
		return
	end
	
	if pItemLocation.BagIndex then
		return GetContainerItemLink(pItemLocation.BagIndex, pItemLocation.BagSlotIndex)
	elseif pItemLocation.SlotName then
		return self:GetInventorySlotIDLink(pSlotID)
	else
		self:ErrorMessage("Unknown location in GetItemLocationLink")
		return
	end
end


function Outfitter:GetItemLocationBagType(pItemLocation)
	if not pItemLocation then
		return
	end
	
	if pItemLocation.BagIndex then
		return self:GetBagItemBagType(pItemLocation.BagIndex, pItemLocation.BagSlotIndex)
	elseif pItemLocation.SlotName then
		return self:GetSlotIDItemBagType(self.cSlotIDs[pItemLocation.SlotName])
	else
		self:ErrorMessage("Unknown location in GetItemLocationBagType")
		return
	end
end

function Outfitter:GetBagItemBagType(pBagIndex, pSlotIndex)
	local vItemCodes = self:GetBagItemLinkInfo(pBagIndex, pSlotIndex)
	
	if not vItemCodes then
		return
	end
	
	return GetItemFamily(vItemCodes[1])
end

function Outfitter:GetSlotIDLinkInfo(pSlotID)
	return self:ParseItemLink2(self:GetInventorySlotIDLink(pSlotID))
end

function Outfitter:GetSlotIDItemBagType(pSlotID)
	local vItemCodes = self:GetSlotIDLinkInfo(pSlotID)
	
	if not vItemCodes then
		return
	end
	
	return GetItemFamily(vItemCodes[1])
end

function Outfitter:ParseItemLink2(pItemLink)
	if not pItemLink then
		return
	end
	
	local _, _, vLinkType = pItemLink:find("|H([^:]+):")
	if vLinkType ~= "item" then
		return
	end
	
	local vStartIndex, vEndIndex, vCodeStrings, vName = pItemLink:find("|Hitem:([^|]*)|h%[([^%]]*)%]|h")
	-- self:DebugMessage("start %s, end %s, codes %s, name %s", tostring(vStartIndex), tostring(vEndIndex), tostring(vCodeStrings), tostring(vName))
	
	if not vCodeStrings then
		return
	end

	local vCodes = {}
	for vCodeString in string.gmatch(vCodeStrings..":", "%d*:") do
		local vCode = tonumber(strmatch(vCodeString, "(%d+):")) or 0
		vCodes[#vCodes + 1] = vCode
	end

	return vCodes, vName
end

function Outfitter:GetItemInfoFromLink(itemLink)
	-- Return nothing if no link is given
	if not itemLink then
		return
	end

	-- Create the object and have it populate itself
	local itemInfo = Outfitter:New(Outfitter._ItemInfoMetaTable)
	itemInfo:GetItemInfoFromLink(itemLink)

	-- Done
	return itemInfo
end

function Outfitter:GetItemInfoFromCode(itemCode)
	local itemInfo = Outfitter:New(Outfitter._ItemInfoMetaTable)
	itemInfo:GetItemInfoFromCode(itemCode)
	return itemInfo
end

function Outfitter:GetBagSlotItemName(bag, slot)
	local tooltip = self.TooltipLib:SharedTooltip()
	tooltip:ClearLines()
	tooltip:SetBagItem(bag, slot)
	
	if not tooltip:IsShown() then
		return
	end
	
	-- Find the first left text line
	local tooltipName = tooltip:GetName()
	local textLeft1Name = tooltipName.."TextLeft1"
	local textLeft1 = _G[textLeft1Name]

	-- Return the item name
	local itemName = textLeft1:GetText()
	return itemName
end

function Outfitter:IsBankBagIndex(pBagIndex)
	return pBagIndex and (pBagIndex > NUM_BAG_SLOTS or pBagIndex < 0)
end

----------------------------------------
Outfitter._ItemInfo = {}
setmetatable(Outfitter._ItemInfo, Outfitter.ObjectMetaTable)
Outfitter._ItemInfoMetaTable = {__index = Outfitter._ItemInfo}
----------------------------------------

function Outfitter._ItemInfo:Construct()
end

function Outfitter._ItemInfo:GetItemInfoFromCode(itemCode)
	local itemFamilyName,
	      itemLink,
	      itemQuality,
	      itemLevel,
	      itemMinLevel,
	      itemType,
	      itemSubType,
	      itemCount,
	      itemInvType = GetItemInfo(itemCode)
	
	--
	

	self.Name = itemFamilyName
	self.Link = ""
	self.Code = itemCode
	self.SubCode = 0
		
	self.Quality = itemQuality
	self.Level = itemLevel
	self.MinLevel = itemMinLevel
	self.Type = itemType
	self.SubType = itemSubType
		
	self.Count = itemCount
	self.InvType = itemInvType
		
	self.EnchantCode = 0
		
	self.JewelCode1 = 0
	self.JewelCode2 = 0
	self.JewelCode3 = 0
	self.JewelCode4 = 0
		
	self.UniqueID = 0
	self.UpgradeTypeID = 0
	self.InstanceDifficultyID = 0
	self.BonusIDs = "::"
	self.UpgradeID = 0
	
	-- Return if there's no inventory type
	if not itemInvType
	or itemInvType == "" then
		return
	end
	
	-- If it's a known inventory type add that knowledge to the item info
	local invTypeInfo = Outfitter.cInvTypeToSlotName[itemInvType]
	if invTypeInfo then

		-- Get the slot name
		if not invTypeInfo.SlotName then
			Outfitter:ErrorMessage("Unknown slot name for inventory type "..itemInvType)
			return
		end
		
		-- Save the slot info
		self.ItemSlotName = invTypeInfo.SlotName
		self.MetaSlotName = invTypeInfo.MetaSlotName
	else
		-- This function can be used to query non-equippable items, so it's not an error for
		-- the inventory type to be unknown.  Should Blizzard ever add a new type though, this
		-- debug message may be useful in figuring out its characteristics
		
		-- Outfitter:ErrorMessage("Unknown slot type "..itemInvType.." for item "..itemName)
	end
end

function Outfitter._ItemInfo:GetItemInfoFromLink(itemLink)
	-- Do nothing if invalid
	if not itemLink then
		return
	end
	
	-- Do nothing if the codes can't be extracted
	local itemCodes, itemName = Outfitter:ParseItemLink2(itemLink)
	if not itemCodes then
		return
	end

	-- Start with the base code info
	self:GetItemInfoFromCode(itemCodes[1])

	-- The provided itemLink may have Quality, ItemLevel etc. that differ from the base item.
	-- supersede info from ItemCode with info from the provided itemLink:
	local _, _,
	      itemQuality,
	      itemLevel,
	      itemMinLevel = GetItemInfo(itemLink)
	
	self.Name = itemName
	self.Link = itemLink
	self.Quality = itemQuality
	self.Level = itemLevel
	self.MinLevel = itemMinLevel

	-- Fill in the rest from itemCodes
	self.EnchantCode = itemCodes[2] or 0
	self.JewelCode1 = itemCodes[3] or 0
	self.JewelCode2 = itemCodes[4] or 0
	self.JewelCode3 = itemCodes[5] or 0
	self.JewelCode4 = itemCodes[6] or 0
	self.SubCode = itemCodes[7] or 0
	self.UniqueID = itemCodes[8] or 0
	-- self.LinkLevel = itemCodes[9]		-- LinkLevel is the level of the player who generated the link, which isn't interesting to us
	-- self.SpecializationID = itemCodes[10]	-- DON'T capture this
	self.UpgradeTypeID = itemCodes[11] or 0
	self.InstanceDifficultyID = itemCodes[12] or 0

	local numBonusIDsString = itemCodes[13]
	local index = 14

	local numBonusIDs = tonumber(numBonusIDsString)
	local bonusID1, bonusID2
	if numBonusIDs > 0 then
		bonusID1 = itemCodes[index]
		index = index + 1
	end
	if numBonusIDs > 1 then
		bonusID2 = itemCodes[index]
		index = index + 1
	end

	self.BonusIDs = (numBonusIDsString ~= 0 and numBonusIDsString or "")..":"..(bonusID1 ~= 0 and bonusID1 or "")..":"..(bonusID2 ~= 0 and bonusID2 or "")
	self.UpgradeID = itemCodes[index] or 0
end

function Outfitter._ItemInfo:ParseTooltip()
	-- Grab a tooltip
	local tooltip = Outfitter.TooltipLib:SharedTooltip()
	tooltip:ClearLines()
	if self.Location and self.Location.BagIndex then
		tooltip:SetBagItem(self.Location.BagIndex, self.Location.BagSlotIndex)
	elseif self.Location and self.Location.SlotID then
		tooltip:SetInventoryItem("player", self.Location.SlotID)
	elseif self.Link then
		tooltip:SetHyperlink(self.Link)
	else
		assert(false, "can't find item for tooltip")
		return
	end
		
	-- Return if something went wrong
	if not tooltip:IsShown() then
		return
	end
	
	-- Iterate the lines of the tooltip
	for line in Outfitter.TooltipLib:TooltipLines(tooltip) do
		self:ParseTooltipLine(line.leftText, line.leftColor)
	end

	-- Done
	self.didParseTooltip = true
end

function Outfitter._ItemInfo:ParseTooltipLine(text, color)
	-- Check for Binds on Equip
	if text == ITEM_BIND_ON_EQUIP then
		self.BoE = true
		return
	end

	-- Check for Unique-Equipped
	local type, count = text:match(Outfitter.cUniqueEquippedSearchPattern)
	if type then
		self.UniqueType = type
		self.UniqueCount = tonumber(count)
		return
	end

	-- Check for Requires
	if text:match(Outfitter.cRequiresPrefix) then
		local hsvColor = Outfitter:RGBToHSV(color)
		self.FailedRequirements = hsvColor.s > 0.2 and hsvColor.v > 0.2 and (hsvColor.h < 50 or hsvColor.h > 310)
		return
	end
end

function Outfitter._ItemInfo:GetBoE()
	-- Get the info from the tooltip if necessary
	if not self.didParseTooltip then
		self:ParseTooltip()
	end

	-- Return the value
	return self.BoE
end

function Outfitter._ItemInfo:GetMeetsRequirements()
	-- Get the info from the tooltip if necessary
	if not self.didParseTooltip then
		self:ParseTooltip()
	end

	-- Return the value
	return not self.FailedRequirements
end

function Outfitter._ItemInfo:GetUniqueEquipTypes()
	-- Get the info from the tooltip if necessary
	if not self.didParseTooltip then
		self:ParseTooltip()
	end
	
	-- Return nothing if there is nothing
	if not self.UniqueType then
		return
	end
	
	-- Return the values
	return {[self.UniqueType] = self.UniqueCount}
end

----------------------------------------
--
----------------------------------------

function Outfitter:GetInventoryItemInfo(pInventorySlot)
	local vSlotID = self.cSlotIDs[pInventorySlot]
	
	if not vSlotID then
		return
	end
	
	local vItemInfo = self:GetSlotIDItemInfo(vSlotID)
	
	if not vItemInfo then
		return
	end
	
	vItemInfo.Location.SlotName = pInventorySlot
	
	return vItemInfo
end

function Outfitter:GetSlotIDItemInfo(slotID)
	local itemLink = self:GetInventorySlotIDLink(slotID)
	if not itemLink then
		return
	end

	local itemInfo = self:GetItemInfoFromLink(itemLink)
	if not itemInfo then
		return
	end

	local location = ItemLocation:CreateFromEquipmentSlot(slotID)

	itemInfo.Quality = GetInventoryItemQuality("player", slotID)
	itemInfo.Texture = GetInventoryItemTexture("player", slotID)
	-- itemInfo.Gem1, itemInfo.Gem2, itemInfo.Gem3, itemInfo.Gem4 = GetInventoryItemGems(slotID)
	itemInfo.AzeriteCodes = self:GetAzeriteCodesForLocation(location)
	itemInfo.Location = {SlotID = slotID}

	local location = ItemLocation:CreateFromEquipmentSlot(slotID)

	return itemInfo
end

function Outfitter:GetAzeriteCodesForLocation(location)


	return
end

function Outfitter:GetNumBags()
	if self.BankFrameIsOpen then
		return NUM_BAG_SLOTS + NUM_BANKBAGSLOTS, -1
	else
		return NUM_BAG_SLOTS, 0
	end
end

function Outfitter:GetBagList()
	local vBagList = {}
	if self.BankFrameIsOpen then
		for vIndex = -1, NUM_BAG_SLOTS + NUM_BANKBAGSLOTS do
			vBagList[vIndex] = true
		end
	else
		for vIndex = 0, NUM_BAG_SLOTS do
			vBagList[vIndex] = true
		end
	end
	--[[
	if self.VoidStorageIsOpen then
		vBagList["VOID_DEPOSIT"] = true
		vBagList["VOID_WITHDRAW"] = true
		vBagList["VOID_STORAGE"] = true
	end
	]]
	return vBagList
end

function Outfitter:GetInventorySlotIDLink(slotID)
	return GetInventoryItemLink("player", slotID)
end

Outfitter.LinkCache =
{
	Inventory = {},
	FirstBagIndex = 0,
	NumBags = 0,
	Bags = {},
}

function Outfitter:ScheduleSynch()
	self.SchedulerLib:RescheduleTask(0.01, self.Synchronize, self)
end

function Outfitter:Synchronize()
	local vBagsChanged, vInventoryChanged = false, false

	if self.Debug.InventoryCache then
		self:DebugMessage("Synchronize()")
	end
	
	-- Synchronize bag links
	
	local vNumBags, vFirstBagIndex = self:GetNumBags()
	
	if self.LinkCache.FirstBagIndex ~= vFirstBagIndex
	or self.LinkCache.NumBags ~= vNumBags then
		
		self.LinkCache.FirstBagIndex = vFirstBagIndex
		self.LinkCache.NumBags = vNumBags
		
		vBagsChanged = true
	end
	
	for vBagIndex = vFirstBagIndex, vNumBags do
		local vBag = self.LinkCache.Bags[vBagIndex]
		local vBagChanged = false
		
		if not vBag then
			vBag = {}
			self.LinkCache.Bags[vBagIndex] = vBag
		end
		
		local vNumBagSlots = GetContainerNumSlots(vBagIndex)
		
		if #vBag ~= vNumBagSlots then
			wipe(vBag)
			vBagChanged = true
		end
		
		for vSlotIndex = 1, vNumBagSlots do
			local vItemLink = GetContainerItemLink(vBagIndex, vSlotIndex) or ""
			
			if vBag[vSlotIndex] ~= vItemLink then
				vBag[vSlotIndex] = vItemLink
				vBagChanged = true
			end
		end
		
		if vBagChanged then
			if self.InventoryCache then
				self.InventoryCache:FlushBag(vBagIndex)
			end
			
			vBagsChanged = true
		end
	end
	
	-- Synchronize inventory links
	
	for _, vInventorySlot in ipairs(self.cSlotNames) do
		local vItemLink
		
		vItemLink = GetInventoryItemLink("player", self.cSlotIDs[vInventorySlot])
		
		if self.Debug.InventoryCache then
			self:DebugMessage("Synchronize: Slot %s contains %s", tostring(vInventorySlot), tostring(vItemLink))
		end
		
		if self.LinkCache.Inventory[vInventorySlot] ~= vItemLink then
			self.LinkCache.Inventory[vInventorySlot] = vItemLink
			vInventoryChanged = true
		end
	end
	
	if vInventoryChanged then
		if self.Debug.InventoryCache then
			self:DebugMessage("Synchronize: InventoryChanged")
		end
		
		if self.InventoryCache then
			self.InventoryCache:FlushInventory()
		end
		
		self.EventLib:DispatchEvent("OUTFITTER_INVENTORY_CHANGED")
	end
	
	if vBagsChanged then
		if self.Debug.InventoryCache then
			self:DebugMessage("Synchronize: Bags changed")
		end
		
		self.EventLib:DispatchEvent("OUTFITTER_BAGS_CHANGED")
	end
	
	-- Done
	
	if vBagsChanged or vInventoryChanged then
		self.DisplayIsDirty = true
		self:Update(false)
	end
	
	--
	
	self:RunThreads()
	
	return vBagsChanged or vInventoryChanged, vInventoryChanged, vBagsChanged
end

----------------------------------------
-- InventoryCache
----------------------------------------

function Outfitter:GetInventoryCache()
	if not self.InventoryCache then
		self.InventoryCache = self:New(self._InventoryCache)
		
		if self.Debug.InventoryCache then
			self:DebugTable(self.InventoryCache, "InventoryCache")
		end
	end
	
	self.InventoryCache:Synchronize()
	
	return self.InventoryCache
end

function Outfitter:FlushInventoryCache()
	if self.InventoryCache then
		self.InventoryCache:Flush()
	end
end

----------------------------------------
Outfitter._InventoryCache = {}
----------------------------------------

function Outfitter._InventoryCache:Construct()
	self.ItemsByCode = {}
	self.ItemsBySlot = {}
	self.InventoryItems = nil
	self.BagItems = {}
	self.NeedsUpdate = true
	
	self.FirstBagIndex = 0
	self.NumBags = 0

	Outfitter.EventLib:RegisterEvent("GET_ITEM_INFO_RECEIVED", self.Flush, self)
end

function Outfitter._InventoryCache:Flush()
	wipe(self.ItemsByCode)
	wipe(self.ItemsBySlot)
	self.InventoryItems = nil
	wipe(self.BagItems)
	self.NeedsUpdate = true
	
	self.FirstBagIndex = 0
	self.NumBags = 0
end

function Outfitter._InventoryCache:Synchronize()
	-- Check for a change in the number of bags
	
	local vNumBags, vFirstBagIndex = Outfitter:GetNumBags()
	
	if self.FirstBagIndex ~= vFirstBagIndex
	or self.NumBags ~= vNumBags then
		for vBagIndex = self.FirstBagIndex, vFirstBagIndex - 1 do
			self:FlushBag(vBagIndex)
		end
		
		for vBagIndex = vNumBags + 1, self.NumBags do
			self:FlushBag(vBagIndex)
		end
		
		self.NeedsUpdate = true
	end
	
	-- If there's a cached copy just clear the IgnoreItem flags and return it
	
	if not self.NeedsUpdate then
		return
	end
	
	if not self.InventoryItems then
		self.InventoryItems = {}
		
		for _, vInventorySlot in ipairs(Outfitter.cSlotNames) do
			local vItemInfo = Outfitter:GetInventoryItemInfo(vInventorySlot)
			
			if vItemInfo
			and vItemInfo.ItemSlotName
			and vItemInfo.Code ~= 0 then
				vItemInfo.SlotName = vInventorySlot
				
				self:AddItem(vItemInfo)
			end
		end
	end
	
	for vBagIndex = vFirstBagIndex, vNumBags do
		local vBagItems = self.BagItems[vBagIndex]
		
		if not vBagItems then
			self.BagItems[vBagIndex] = {}
			
			local vNumBagSlots = GetContainerNumSlots(vBagIndex)
			
			if vNumBagSlots > 0 then
				for vBagSlotIndex = 1, vNumBagSlots do
					local vItemInfo = Outfitter:GetBagItemInfo(vBagIndex, vBagSlotIndex)
					
					if vItemInfo
					and vItemInfo.Code ~= 0
					and vItemInfo.ItemSlotName
					and Outfitter:CanEquipBagItem(vBagIndex, vBagSlotIndex)
					and not vItemInfo:GetBoE() then
						self:AddItem(vItemInfo)
					end
				end -- for vBagSlotIndex
			end -- if vNumBagSlots > 0
		end -- if not BagItems
	end -- for vBagIndex
	
	self.FirstBagIndex = vFirstBagIndex
	self.NumBags = vNumBags
	
	self.NeedsUpdate = false
end

function Outfitter._InventoryCache:AddItem(pItem)
	-- Add the item to the code list
	
	local vItemFamily = self.ItemsByCode[pItem.Code]

	if not vItemFamily then
		vItemFamily = {}
		self.ItemsByCode[pItem.Code] = vItemFamily
	end
	
	table.insert(vItemFamily, pItem)
	
	-- Add the item to the slot list
	
	local vItemSlot = self.ItemsBySlot[pItem.ItemSlotName]
	
	if not vItemSlot then
		vItemSlot = {}
		self.ItemsBySlot[pItem.ItemSlotName] = vItemSlot
	end
	
	table.insert(vItemSlot, pItem)
	
	-- Add the item to the bags
	
	if pItem.Location.BagIndex then
		local vBagItems = self.BagItems[pItem.Location.BagIndex]
		
		if not vBagItems then
			vBagItems = {}
			self.BagItems[pItem.Location.BagIndex] = vBagItems
		end
		
		vBagItems[pItem.Location.BagSlotIndex] = pItem
		
	-- Add the item to the inventory
	
	elseif pItem.Location.SlotName then
		self.InventoryItems[pItem.Location.SlotName] = pItem
	end
end

function Outfitter._InventoryCache:RemoveItem(pItem)
	-- Remove the item from the code list
	
	local vItems = self.ItemsByCode[pItem.Code]
	
	for vIndex, vItem in ipairs(vItems) do
		if vItem == pItem then
			table.remove(vItems, vIndex)
			break
		end
	end

	-- Remove the item from the slot list
	
	local vItemSlot = self.ItemsBySlot[pItem.ItemSlotName]
	
	if vItemSlot then
		for vIndex, vItem in ipairs(vItemSlot) do
			if vItem == pItem then
				table.remove(vItemSlot, vIndex)
				break
			end
		end
	end
	
	-- Remove the item from the bags list
	
	if pItem.Location.BagIndex then
		local vBagItems = self.BagItems[pItem.Location.BagIndex]
		
		if vBagItems then
			vBagItems[pItem.Location.BagSlotIndex] = nil
		end
		
	-- Remove the item from the inventory list
	
	elseif pItem.Location.SlotName then
		self.InventoryItems[pItem.Location.SlotName] = nil
	end
end

function Outfitter._InventoryCache:SwapLocations(pLocation1, pLocation2)
	-- if pLocation1.BagIndex then
	-- 	Outfitter:TestMessage("Outfitter._InventoryCache:SwapLocations: Swapping bag "..pLocation1.BagIndex..", "..pLocation1.BagSlotIndex)
	-- elseif pLocation1.SlotName then
	-- 	Outfitter:TestMessage("Outfitter._InventoryCache:SwapLocations: Swapping slot "..pLocation1.SlotName)
	-- end
	-- if pLocation2.BagIndex then
	-- 	Outfitter:TestMessage("Outfitter._InventoryCache:SwapLocations: with bag "..pLocation2.BagIndex..", "..pLocation2.BagSlotIndex)
	-- elseif pLocation2.SlotName then
	-- 	Outfitter:TestMessage("Outfitter._InventoryCache:SwapLocations: with slot "..pLocation2.SlotName)
	-- end
end

function Outfitter._InventoryCache:SwapLocationWithInventorySlot(pLocation, pSlotName)
	-- if pLocation.BagIndex then
	-- 	Outfitter:TestMessage("Outfitter._InventoryCache:SwapLocationWithInventorySlot: Swapping bag "..pLocation.BagIndex..", "..pLocation.BagSlotIndex.." with slot "..pSlotName)
	-- elseif pLocation.SlotName then
	-- 	Outfitter:TestMessage("Outfitter._InventoryCache:SwapLocationWithInventorySlot: Swapping slot "..pLocation.SlotName.." with slot "..pSlotName)
	-- end
end

function Outfitter._InventoryCache:SwapBagSlotWithInventorySlot(pBagIndex, pBagSlotIndex, pSlotName)
	-- Outfitter:TestMessage("Outfitter._InventoryCache:SwapBagSlotWithInventorySlot: Swapping bag "..pBagIndex..", "..pBagSlotIndex.." with slot "..pSlotName)
end

function Outfitter._InventoryCache:FindItemInfoByCode(pItemInfo)
	local vItems = self.ItemsByCode[pItemInfo.Code]
	
	for _, vItemInfo in ipairs(vItems) do
		if pItemInfo == vItemInfo then
			return true
		end
	end
	
	return false
end

function Outfitter._InventoryCache:FindItemInfoBySlot(pItemInfo)
	local vItems = self.ItemsBySlot[pItemInfo.ItemSlotName]

	for _, vItemInfo in ipairs(vItems) do
		if pItemInfo == vItemInfo then
			return true
		end
	end
	
	return false
end

function Outfitter._InventoryCache:FindItem(pOutfitItem, pMarkAsInUse, pAllowSubCodeWildcard)
	local vItem, vIndex, vItemFamily, vIgnoredItem = self:FindItemIndex(pOutfitItem, pAllowSubCodeWildcard)
	
	if not vItem then
		return nil, vIgnoredItem
	end
	
	if pMarkAsInUse then
		vItem.IgnoreItem = true
	end
	
	return vItem
end

function Outfitter._InventoryCache:FindItemIndex(pOutfitItem, pAllowSubCodeWildcard)
	local vItemFamily = self.ItemsByCode[pOutfitItem.Code]
	
	if not vItemFamily then
		return
	end
	
	local vBestMatch = nil
	local vBestMatchIndex = nil
	local vNumItemsFound = 0
	local vFoundIgnoredItem = nil

	for vIndex, vItem in ipairs(vItemFamily) do
		-- All done if the caller doesn't care about the SubCode
		
		if pAllowSubCodeWildcard
		and not pOutfitItem.SubCode then
			if vItem.IgnoreItem then
				vFoundIgnoredItem = vItem
			else
				return vItem, vIndex, vItemFamily, nil
			end
		
		-- If the subcode matches then check for an enchant match
		
		elseif vItem.SubCode == pOutfitItem.SubCode then
			-- If the enchant matches then we're all done
			
			if vItem.InvType == "INVTYPE_AMMO"
			or (vItem.EnchantCode == pOutfitItem.EnchantCode 
			and vItem.JewelCode1 == pOutfitItem.JewelCode1 
			and vItem.JewelCode2 == pOutfitItem.JewelCode2
			and vItem.JewelCode3 == pOutfitItem.JewelCode3 
			and vItem.JewelCode4 == pOutfitItem.JewelCode4
			and vItem.UniqueID == pOutfitItem.UniqueID
			and vItem.UpgradeTypeID == pOutfitItem.UpgradeTypeID
			and vItem.BonusIDs == pOutfitItem.BonusIDs
			and vItem.UpgradeID == pOutfitItem.UpgradeID
			and Outfitter.AzeriteCodesMatch(vItem.AzeriteCodes, pOutfitItem.AzeriteCodes)) then
				if vItem.IgnoreItem then
					vFoundIgnoredItem = vItem
				else
					return vItem, vIndex, vItemFamily
				end
			
			-- Otherwise save the match in case a better one can
			-- be found
			
			else
				if vItem.IgnoreItem then
					if not vFoundIgnoredItem then
						vFoundIgnoredItem = vItem
					end
				else
					vBestMatch = vItem
					vBestMatchIndex = vIndex
					vNumItemsFound = vNumItemsFound + 1
				end
			end
		end
	end
	
	-- Return the match if only one item was found
	
	if vNumItemsFound == 1
	and not vBestMatch.IgnoreItem then
		return vBestMatch, vBestMatchIndex, vItemFamily, nil
	end
	
	--Outfitter:DebugMessage("Didn't find item:")
	--Outfitter:DebugTable(pOutfitItem, "pOutfitItem")
	--Outfitter:DebugTable(vItemFamily, "vItemFamily")

	return nil, nil, nil, vFoundIgnoredItem
end
		
function Outfitter._InventoryCache:FindItemOrAlt(pOutfitItem, pMarkAsInUse, pAllowSubCodeWildcard)
	local vItem, vIgnoredItem = self:FindItem(pOutfitItem, pMarkAsInUse, pAllowSubCodeWildcard)
	
	if vItem then
		return vItem
	end
	
	-- See if there's an alias for the item if it wasn't found
	
	local vAltCode = Outfitter.cItemAliases[pOutfitItem.Code]
	
	if not vAltCode then
		return nil, vIgnoredItem
	end
	
	return self:FindItem({Code = vAltCode}, pMarkAsInUse, true)
end

function Outfitter._InventoryCache:FindAllItemsOrAlt(pOutfitItem, pAllowSubCodeWildcard, rItems)
	local vNumItems = self:FindAllItems(pOutfitItem, pAllowSubCodeWildcard, rItems)
	local vAltCode = Outfitter.cItemAliases[pOutfitItem.Code]
	
	if vAltCode then
		vNumItems = vNumItems + self:FindAllItems({Code = vAltCode}, true, rItems)
	end
	
	return vNumItems
end

function Outfitter._InventoryCache:FindAllItems(pOutfitItem, pAllowSubCodeWildcard, rItems)
	local vItemFamily = self.ItemsByCode[pOutfitItem.Code]
	
	if not vItemFamily then
		return 0
	end
	
	local vNumItemsFound = 0
	
	for vIndex, vItem in ipairs(vItemFamily) do
		if (pAllowSubCodeWildcard and not pOutfitItem.SubCode)
		or vItem.SubCode == pOutfitItem.SubCode then
			table.insert(rItems, vItem)
			vNumItemsFound = vNumItemsFound + 1
		end
	end
	
	return vNumItemsFound
end

function Outfitter._InventoryCache:FlushBag(pBagIndex)
	if self.BagItems[pBagIndex] then
		for vBagSlotIndex, vItem in pairs(self.BagItems[pBagIndex]) do
			self:RemoveItem(vItem)
		end
		
		self.NeedsUpdate = true
		self.BagItems[pBagIndex] = nil
	end
end

function Outfitter._InventoryCache:FlushInventory()
	if Outfitter.Debug.InventoryCache then
		Outfitter:DebugMessage("Outfitter._InventoryCache:FlushInventory()")
	end
	
	-- Do nothing if no items are cached yet
	if not self.InventoryItems then
		return
	end

	-- Remove each item
	for vInventorySlot, vItem in pairs(self.InventoryItems) do
		self:RemoveItem(vItem)
	end
	
	self.NeedsUpdate = true
	self.InventoryItems = nil
end

function Outfitter._InventoryCache:ResetIgnoreItemFlags()
	for vItemCode, vItemFamily in pairs(self.ItemsByCode) do
		for _, vItem in ipairs(vItemFamily) do
			vItem.IgnoreItem = nil
		end
	end
end

function Outfitter._InventoryCache:GetMissingItems(pOutfit)
	if not pOutfit then
		Outfitter:DebugMessage("Outfitter._InventoryCache:GetMissingItems: pOutfit is nil")
		Outfitter:DebugStack()
		return
	end
	
	self:ResetIgnoreItemFlags()
	
	return pOutfit:GetMissingItems(self)
end

function Outfitter._InventoryCache:CompiledUnusedItemsList()
	-- Reset all the in-use flags in the cache
	self:ResetIgnoreItemFlags()
	
	-- Iterate the outfits and mark all their items as in-use
	for vCategoryID, vOutfits in pairs(gOutfitter_Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			local vItems = vOutfit:GetItems()
			if vItems then
				for vInventorySlot, vOutfitItem in pairs(vItems) do
					if vOutfitItem.Code ~= 0 then
						local vItem = self:FindItemOrAlt(vOutfitItem, true)
						
						if vItem then
							vItem.UsedInOutfit = true
						end
					end
				end
			end
		end
	end
	
	-- Look for items which aren't marked as in-use
	local vUnusedItems = nil
	for vCode, vFamilyItems in pairs(self.ItemsByCode) do
		for vIndex, vOutfitItem in ipairs(vFamilyItems) do
			if not vOutfitItem.UsedInOutfit
			and Outfitter.cIgnoredUnusedItems[vOutfitItem.Code] == nil then
				if not vUnusedItems then
					vUnusedItems = {}
				end

				table.insert(vUnusedItems, vOutfitItem)
			end
		end
	end
	
	-- Done
	self.UnusedItems = vUnusedItems
end

function Outfitter._InventoryCache:GetBoEItems()
	local items = {}

	-- Iterate the bags
	local numBags, firstBagIndex = Outfitter:GetNumBags()
	for bagIndex = firstBagIndex, numBags do
		local numSlots = GetContainerNumSlots(bagIndex)
			
		if numSlots > 0 then
			for slotIndex = 1, numSlots do
				local itemInfo = Outfitter:GetBagItemInfo(bagIndex, slotIndex)
					
				if itemInfo
				and itemInfo.Code ~= 0
				and itemInfo.ItemSlotName
				and Outfitter:CanEquipBagItem(bagIndex, slotIndex)
				and itemInfo:GetBoE() then
					table.insert(items, itemInfo)
				end
			end -- for slotIndex
		end -- if numSlots > 0
	end -- for bagIndex

	return items
end

function Outfitter._InventoryCache:ItemsAreSame(pItem1, pItem2)
	if not pItem1 then
		if Outfitter.Debug.TemporaryItems
		and pItem2 ~= nil then
			Outfitter:DebugMessage("ItemsAreSame(nil, %s): false", tostring(pItem2.Name))
		end
		
		return pItem2 == nil
	end
	
	if not pItem2 then
		if Outfitter.Debug.TemporaryItems then
			Outfitter:DebugMessage("ItemsAreSame(%s, nil): false", tostring(pItem1.Name))
		end
		return false
	end
	
	if pItem1.Code == 0 then
		if Outfitter.Debug.TemporaryItems
		and pItem2.Code ~= 0 then
			Outfitter:DebugMessage("ItemsAreSame(EMPTY, %s): false", tostring(pItem2.Name))
		end
		return pItem2.Code == 0
	end
	
	if (pItem1.Code ~= pItem2.Code and Outfitter.cItemAliases[pItem1.Code] ~= pItem2.Code)
	or (pItem1.Code == pItem2.Code and pItem1.SubCode ~= pItem2.SubCode) then
		if Outfitter.Debug.TemporaryItems then
			Outfitter:DebugMessage("ItemsAreSame(%s, %s): false", tostring(pItem1.Name), tostring(pItem2.Name))
		end
		return false
	end
	
	local vItems = {}
	local vNumItems = self:FindAllItemsOrAlt(pItem1, nil, vItems)
	
	if vNumItems == 0 then
		-- Shouldn't ever get here
		
		Outfitter:DebugMessage("Outfitter.ItemList_ItemsAreSame: Item not found")
		Outfitter:DebugTable(pItem1, "Item")
		
		return false
	elseif vNumItems == 1
	or pItem1.InvType == "INVTYPE_AMMO"
	or pItem2.InvType == "INVTYPE_AMMO" then
		-- If there's only one of that item then the enchant code
		-- is disregarded so just make sure it's the same
		
		-- Also don't bother comparing enchants on ammo or on items that
		-- were found as alternate codes for the desired item (ie, Argent vs. Alliance/Horde Lance)
		
		return true
	else
		local vResult = Outfitter.cItemAliases[pItem1.Code] -- Aliasable item, don't compare sub-codes
		   or (pItem1.EnchantCode == pItem2.EnchantCode
		   and pItem1.JewelCode1 == pItem2.JewelCode1
		   and pItem1.JewelCode2 == pItem2.JewelCode2
		   and pItem1.JewelCode3 == pItem2.JewelCode3
		   and pItem1.JewelCode4 == pItem2.JewelCode4
		   and pItem1.UniqueID == pItem2.UniqueID
		   and pItem1.UpgradeTypeID == pItem2.UpgradeTypeID
		   and pItem1.InstanceDifficultyID == pItem2.InstanceDifficultyID
		   and pItem1.BonusIDs == pItem2.BonusIDs
		   and pItem1.UpgradeID == pItem2.UpgradeID
		   and Outfitter.AzeriteCodesMatch(pItem1.AzeriteCodes, pItem2.AzeriteCodes))

		if Outfitter.Debug.TemporaryItems
		and not vResult then
			Outfitter:DebugMessage("ItemsAreSame(%s, %s): false", tostring(pItem1.Name), tostring(pItem2.Name))
		end
		
		return vResult
	end
end

function Outfitter._InventoryCache:InventorySlotContainsItem(inventorySlot, outfitItem)
	-- Nil items are supposed to be ignored, so never claim the slot contains them
	if outfitItem == nil then
--		Outfitter:DebugMessage("InventorySlotContainsItem: OutfitItem is nil")
		return false, nil
	end

	-- If the item specifies an empty slot check to see if the slot is actually empty
	
	if outfitItem.Code == 0 then
		return self.InventoryItems[inventorySlot] == nil
	end
	
	local items = {}
	local numItems = self:FindAllItemsOrAlt(outfitItem, nil, items)

	if inventorySlot == "HeadSlot" then
		Outfitter:DebugTable(items, "items")
	end

	if numItems == 0 then
--		Outfitter:DebugMessage("InventorySlotContainsItem: OutfitItem not found")
--		Outfitter:DebugTable(outfitItem, "InventorySlotContainsItem: OutfitItem")
		
		return false
	elseif numItems == 1 then
		-- If there's only one of that item then the enchant code
		-- is disregarded so just make sure it's in the slot
		
		local match = items[1].Location.SlotName == inventorySlot
		
--		if not match then
--			Outfitter:DebugMessage("InventorySlotContainsItem: Slots don't match %s", tostring(inventorySlot))
--			Outfitter:DebugTable(items[1], "InventorySlotContainsItem: Item")
--		end
		
		return match, items[1]
	else
		-- See if one of the items is in the slot
		
		for _, item in ipairs(items) do
			if item.Location.SlotName == inventorySlot then
				-- Must match the enchant and jewel codes if there are multiple items
				-- in order to be considered a perfect match
				
					-- note SubCode mismatch is not checked for; shouldn't it be?
				local codesMatch = item.InvType == "INVTYPE_AMMO"
				                or (item.EnchantCode == outfitItem.EnchantCode
				                and item.JewelCode1 == outfitItem.JewelCode1
				                and item.JewelCode2 == outfitItem.JewelCode2
				                and item.JewelCode3 == outfitItem.JewelCode3
				                and item.JewelCode4 == outfitItem.JewelCode4
				                and item.UniqueID == outfitItem.UniqueID
				                and item.UpgradeTypeID == outfitItem.UpgradeTypeID
				                and item.InstanceDifficultyID == outfitItem.InstanceDifficultyID
				                and item.BonusIDs == outfitItem.BonusIDs
				                and item.UpgradeID == outfitItem.UpgradeID
				                and Outfitter.AzeriteCodesMatch(item.AzeriteCodes, outfitItem.AzeriteCodes))
				
--				if not codesMatch then
--					Outfitter:DebugMessage("InventorySlotContainsItem: Items don't match")
--					Outfitter:DebugTable(outfitItem, "InventorySlotContainsItem: OutfitItem")
--					Outfitter:DebugTable(item, "InventorySlotContainsItem: Item")
--				end
				
				return codesMatch, item
			end
		end
		
		-- No items in the slot
		
--		Outfitter:DebugMessage("InventorySlotContainsItem: Items don't match -- no item")
--		Outfitter:DebugTable(outfitItem, "InventorySlotContainsItem: OutfitItem")
		
		return false, nil
	end
end

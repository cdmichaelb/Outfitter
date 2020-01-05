Outfitter.EquipmentUpdateCount = 0

----------------------------------------
Outfitter._EquipmentChanges = Outfitter:newClass()
----------------------------------------

function Outfitter._EquipmentChanges:construct()
end

function Outfitter._EquipmentChanges:addChange(change)
	table.insert(self, change)
end

function Outfitter._EquipmentChanges:insertChange(index, change)
	table.insert(self, index, change)
end

function Outfitter._EquipmentChanges:findChangeForSlot(slotName)
	for index, change in ipairs(self) do
		if not change and change.SlotName == slotName then
			return change, index
		end
	end
	
	-- Return nothing
end

function Outfitter._EquipmentChanges:addChangesToEquipOutfit(outfit, inventoryCache)
	inventoryCache:ResetIgnoreItemFlags()
	
	-- Remove items which are already in the correct slot from the outfit and from the
	-- equippable items list
	
	local items = outfit:GetItems()
	
	for inventorySlot, outfitItem in pairs(items) do
		local containsItem, item = inventoryCache:InventorySlotContainsItem(inventorySlot, outfitItem)
		
		if containsItem then
			outfit:RemoveItem(inventorySlot)
			
			if item then
				item.IgnoreItem = true
			end
		end
	end
	
	if Outfitter.Debug.EquipmentChanges then
		Outfitter:DebugOutfitTable(outfit, "Remaining")
	end
	
	-- WoW has a bug with dual-spec where you can end up with dual 2H weapons equipped even
	-- though you may no longer have Titan's Grip.  To correct this, I detect the situation here
	-- and insert an unequip operation for the 2H'er in the OH slot to restore the equipment
	-- to a valid state.
	
	local has2HGlitch
	local secondaryHandItem = inventoryCache.InventoryItems.SecondaryHandSlot
	
	if not Outfitter.CanDualWield2H
	and secondaryHandItem
	and secondaryHandItem.InvType == "INVTYPE_2HWEAPON" then
		has2HGlitch = true
		
		local change = Outfitter:New(Outfitter._EquipmentChange, "SecondaryHandSlot", secondaryHandItem.Name)
		
		change.TGFix = true
		
		self:addChange(change)
	end
	
	-- Scan the outfit using the Outfitter.cSlotNames array as an index so that changes
	-- are executed in the specified order.  The order is designed so that items with
	-- durability values are unequipped first, followed by other items such as cloaks and rings
	-- which have no durability.  This makes unequipping before death (falling, raid/party wipe) more useful
	-- since it'll reduce the cost of repairs
	
	for _, inventorySlot in ipairs(Outfitter.cSlotNames) do
		self:addSlot(outfit, inventoryCache, inventorySlot, has2HGlitch)
	end -- for
	
	if #self == 0 then
		return nil
	end
	
	self:adjustUniqueEquipSwaps()
	self:optimize()
end

function Outfitter._EquipmentChanges:addUnequipChangesForOutfit(outfit, inventoryCache)
	local items = outfit:GetItems()
	
	for inventorySlot, item in pairs(items) do
		local inventoryItem, ignoredItem = inventoryCache:FindItemOrAlt(item, true)
		
		if inventoryItem then
			local change = Outfitter:New(Outfitter._EquipmentChange)
			change.FromLocation = inventoryItem.Location
			change.Item = inventoryItem
			self:addChange(change)
		end
	end -- for
end

function Outfitter._EquipmentChanges:addSlot(outfit, inventoryCache, inventorySlot, has2HGlitch)
	-- Get the item the outfit wants in the slot
	local outfitItem = outfit:GetItem(inventorySlot)
	
	-- Do nothing if the outfit isn't using that slot
	if not outfitItem then
		return
	end
	
	local slotID = Outfitter.cSlotIDs[inventorySlot]
	
	local currentItemCodes, currentItemName = Outfitter:GetSlotIDLinkInfo(slotID)
	local currentItemCode = currentItemCodes and currentItemCodes[1]

	local equipmentChange = Outfitter:New(Outfitter._EquipmentChange, inventorySlot, outfitItem.Name)
	
	-- If the item is a phantom, just ignore it
	if Outfitter.PhantomItemIDs[outfitItem.Code] then
		return
	end

	--
	
	if has2HGlitch and inventorySlot == "SecondaryHandSlot" then
		currentItemCode = nil -- Pretend there's nothing in the OH since we've queued an unequip for it
	end
	
	-- Empty the slot if it's supposed to be blank
	if outfitItem.Code == 0 or outfitItem.Code == nil then
		if not currentItemCode then
			return -- Nothing to do if the slot is supposed to be empty and already is
		end
	else
		-- Find the item		
		local item, ignoredItem = inventoryCache:FindItemOrAlt(outfitItem, true)
		
		-- If the item wasn't found then show an appropriate error message and leave
		if not item then
			Outfitter:ShowEquipError(outfitItem, ignoredItem, inventorySlot)
			return
		end
		
		-- Add the unique-equipped item counts for the item being equipped
		equipmentChange:addLocationUniqueEquipTotals(item.Location)
		
		-- Update the change with info for the item being equipped
		equipmentChange.ItemMetaSlotName = item.MetaSlotName
		equipmentChange.ItemLocation = item.Location
		
		-- Treat the item as a 1H if they can dual wield it
		if equipmentChange.ItemMetaSlotName == "TwoHandSlot"
		and not Outfitter:ItemUsesBothWeaponSlots(outfitItem) then
			equipmentChange.ItemMetaSlotName = "Weapon0Slot"
		end
	end -- else outfitItem.Code == 0 or outfitItem.Code == nil
	
	-- Insert the change
	self:addChange(equipmentChange)
end

function Outfitter._EquipmentChanges:adjustUniqueEquipSwaps()
	-- Calculate the sort rank for each change. There are three sort ranks and they are determined by whether an change item increases, decreases, or both increases and decreases totals for unique-equip attributes
	for index, change in ipairs(self) do
		
		-- Calculate the initial sort rank
		change.uniqueEquipOrderingRank = change:calcUniqueEquipOrderingRank()
		
		-- Initially use the slot sort index as the second-order sort value
		change.uniqueEquipOrderingRank2 = Outfitter.cSlotOrder[change.SlotName]
	end
	
	-- The algorithm is repeated for multiple passes until no entries are relocated during a pass. Keep track of the totals for each pass to determine whether it changed.
	local previousRank1Count, previousRank2Count
	
	-- Limit the number of iterations by using a for loop instead of an unconditional while
	local uniqueEquipStartCounts
	for iteration = 1, 20 do

		-- Sort the changes using the two change rank fields
		table.sort(self, Outfitter.CompareUniqueEquipOrderingRanks)
		
		-- Sum up the ID counts in rank 1 entries and re-assign ranks
		uniqueEquipStartCounts = Outfitter:RecycleTable(uniqueEquipStartCounts)
		
		local rank1Count, rank2Count = 0, 0
		
		for index, change in ipairs(self) do

			-- Rank 1 doesn't change order, so simply total up the unique counts and set the uniqueEquipOrderingRank2 field to ensure the ordering is preserved
			if change.uniqueEquipOrderingRank == 1 then

				-- Track the totals for each type
				for uniqueEquipID, uniqueEquipCount in pairs(change.uniqueEquipTotals) do
					uniqueEquipStartCounts[uniqueEquipID] = (uniqueEquipStartCounts[uniqueEquipID] or 0) + uniqueEquipCount
				end
				
				-- Preserve the ordering by using the index as the second-order sort value				
				change.uniqueEquipOrderingRank2 = index
				
				-- Track how many rank 1 entries were found
				rank1Count = rank1Count + 1
			
			-- Rank 2 changes increase the unique count of some categories while decreasing others. Swapping one unique-equipped item for another unique-equipped item of another type would do this for example.
			elseif change.uniqueEquipOrderingRank == 2 then
				-- If there's nothing in rank 1 then we're done
				if rank1Count == 0 then
					return
				end
				
				-- Calculate a new rank using the start counts. A change can be promoted to rank 1 if it now results in no change or a net decrease in counts
				change.uniqueEquipOrderingRank = change:calcUniqueEquipOrderingRank(uniqueEquipStartCounts)
				
				-- Adjust the rank for this change
				if change.uniqueEquipOrderingRank == 1 then
					rank1Count = rank1Count + 1
					change.uniqueEquipOrderingRank2 = index
				elseif change.uniqueEquipOrderingRank == 2 then
					rank2Count = rank2Count + 1
				else  -- 3
					change.uniqueEquipOrderingRank2 = index
				end
			
			-- Rank 3 changes increase the unique-equipped count of one or more types.
			else
				-- If there's nothing in rank 1 or 2 we're done
				if rank1Count == 0
				or rank2Count == 0 then
					return
				end
				
				-- Preserve the ordering
				change.uniqueEquipOrderingRank2 = index
			end
		end
		
		-- If the counts don't change we're done
		if previousRank1Count == rank1Count
		and previousRank2Count == rank2Count then
			break
		end
		
		-- The counts changed, so remember the new counts and do it again
		previousRank1Count = rank1Count
		previousRank2Count = rank2Count
	end -- for
end

function Outfitter._EquipmentChanges:fixSlotSwapChange(changeIndex1, equipmentChange1, slotName1, changeIndex2, equipmentChange2, slotName2)
	-- No problem if both slots will be emptied
	
	if not equipmentChange1.ItemLocation
	and not equipmentChange2.ItemLocation then
		return
	end
	
	-- No problem if neither slot is being moved to the other one
	
	local slot2ToSlot1 = equipmentChange1.ItemLocation ~= nil
			            and equipmentChange1.ItemLocation.SlotName == slotName2
	
	local slot1ToSlot2 = equipmentChange2.ItemLocation ~= nil
			            and equipmentChange2.ItemLocation.SlotName == slotName1
	
	-- No problem if the slots are swapping with each other
	-- or not moving between each other at all
	
	if slot2ToSlot1 == slot1ToSlot2 then
		return
	end
	
	-- Slot 1 is moving to slot 2
	
	if slot1ToSlot2 then
		if equipmentChange1.ItemLocation then
			if Outfitter.Debug.EquipmentChanges then
				Outfitter:DebugMessage("FixSlotSwapChange: Rearranging so that %s can move to %s", slotName1, slotName2)
			end
			
			-- Swap change 1 and change 2 around
			
			self[changeIndex1] = equipmentChange2
			self[changeIndex2] = equipmentChange1
			
			-- Insert a change to empty slot 2
			
			local emptySlot2 = Outfitter:New(Outfitter._EquipmentChange, equipmentChange2.SlotName)
			self:insertChange(changeIndex1, emptySlot2)

			equipmentChange1.Optimized = true
			equipmentChange2.Optimized = true
			emptySlot2.Optimized = true
		else
			-- Slot 1 is going to be empty, so empty slot 2 instead
			-- and then when slot 1 is moved it'll swap the empty space
			
			if Outfitter.Debug.EquipmentChanges then
				Outfitter:DebugMessage("FixSlotSwapChange: Emptying %s so that %s can move there", slotName2, slotName1)
			end
			
			equipmentChange1.SlotName = slotName2
			equipmentChange1.SlotID = equipmentChange2.SlotID
			equipmentChange1.ItemLocation = nil

			equipmentChange1.Optimized = true
			equipmentChange2.Optimized = true
		end
		
	-- Slot 2 is moving to slot 1
	
	else
		if equipmentChange2.ItemLocation then
			if Outfitter.Debug.EquipmentChanges then
				Outfitter:DebugMessage("FixSlotSwapChange: Rearranging so that %s can move to %s", slotName2, slotName1)
			end
			
			-- Insert a change to empty slot 1 first
			
			local emptySlot1 = Outfitter:New(Outfitter._EquipmentChange, equipmentChange1.SlotName)
			self:insertChange(changeIndex1, emptySlot1)

			equipmentChange1.Optimized = true
			equipmentChange2.Optimized = true
			emptySlot1.Optimized = true
		else
			if Outfitter.Debug.EquipmentChanges then
				Outfitter:DebugMessage("FixSlotSwapChange: Emptying %s so that %s can move there", slotName1, slotName2)
			end
			
			-- Slot 2 is going to be empty, so empty slot 1 instead
			-- and then when slot 2 is moved it'll swap the empty space
			
			equipmentChange2.SlotName = slotName1
			equipmentChange2.SlotID = equipmentChange1.SlotID
			equipmentChange2.ItemLocation = nil
			
			-- Change the order so that slot 1 gets emptied before the move
			
			self[changeIndex1] = equipmentChange2
			self[changeIndex2] = equipmentChange1

			equipmentChange1.Optimized = true
			equipmentChange2.Optimized = true
		end
	end
end

function Outfitter._EquipmentChanges:optimize()
	local didSlot = {}
	
	local changeIndex = 1
	local numChanges = #self
	
	while changeIndex <= numChanges do
		local equipmentChange = self[changeIndex]
		
		-- Do nothing if this change has already been worked on
		
		if equipmentChange.Optimized then
		
		-- If this is the change for the Titan's Grip fix, put it at the very start
		-- so it clears the state before any mainhand/offhand swaps happen
		
		elseif equipmentChange.TGFix then
			if changeIndex ~= 1 then
				if Outfitter.Debug.EquipmentChanges then
					Outfitter:DebugMessage("EquipmentChanges:optimize: Moving TGFix to the front of the list")
				end
				
				table.remove(self, changeIndex)
				self:insertChange(1, equipmentChange)
			end
			
		elseif equipmentChange.SlotName == "SecondaryHandSlot" then
			local equipmentChange2, changeIndex2 = self:findChangeForSlot("MainHandSlot")
			
			-- If equipping an offhand item, make sure it's after equipping
			-- a mainhand item or it will fail when the current mainhand
			-- is a two-hander
			
			if equipmentChange.ItemLocation ~= nil then
				if changeIndex2 and changeIndex2 > changeIndex then
					if Outfitter.Debug.EquipmentChanges then
						Outfitter:DebugMessage("EquipmentChanges:optimize: Moving offhand swap to be after mainhand")
					end
					
					table.remove(self, changeIndex)
					self:insertChange(changeIndex2, equipmentChange)
					
					changeIndex = changeIndex - 1
				end
			
			-- If the off-hand slot is being emptied, then do that before handling the
			-- main hand slot (fixes Titan's Grip problem with the Argent Lance)
			
			elseif equipmentChange.ItemLocation == nil then
				if changeIndex2 and changeIndex2 < changeIndex then
					if Outfitter.Debug.EquipmentChanges then
						Outfitter:DebugMessage("EquipmentChanges:optimize: Moving offhand swap to be before mainhand")
					end
					
					table.remove(self, changeIndex)
					self:insertChange(changeIndex2, equipmentChange)
				end
			end
		
		-- If a two-hand weapon is being equipped, remove the change event
		-- for removing the offhand slot
		
		elseif equipmentChange.ItemMetaSlotName == "TwoHandSlot" then
			local equipmentChange2, changeIndex2 = self:findChangeForSlot("SecondaryHandSlot")
			
			-- If there's a change for the offhand slot, remove it
			
			if changeIndex2 then
				if Outfitter.Debug.EquipmentChanges then
					Outfitter:DebugMessage("EquipmentChanges:optimize: Removing offhand swap because of 2H being equipped")
				end
				
				table.remove(self, changeIndex2)
				
				if changeIndex2 < changeIndex then
					changeIndex = changeIndex - 1
				end
				
				numChanges = numChanges - 1
			end
			
			-- Insert a new change for the offhand slot to empty it ahead
			-- of equipping the two-hand item
			
			if Outfitter.Debug.EquipmentChanges then
				Outfitter:DebugMessage("EquipmentChanges:optimize: Emptying offhand before 2H equip")
			end
			
			self:insertChange(changeIndex, Outfitter:New(Outfitter._EquipmentChange, "SecondaryHandSlot"))
		
		-- Otherwise see if the change needs to be re-arranged so that slot
		-- swapping works correctly (trinkets, rings, or weapon slots being swapped)
		
		else
			local swapSlot = Outfitter.SlotSwapList[equipmentChange.SlotName]
			
			if swapSlot and not didSlot[equipmentChange.SlotName] then
				local equipmentChange2, changeIndex2 = self:findChangeForSlot(swapSlot)
				
				if changeIndex2 then
					self:FixSlotSwapChange(changeIndex, equipmentChange, equipmentChange.SlotName, changeIndex2, equipmentChange2, swapSlot)
				end
				
				didSlot[equipmentChange.SlotName] = true
				
				numChanges = #self
			end
		end
		
		--
		
		changeIndex = changeIndex + 1
	end
end

function Outfitter._EquipmentChanges:execute(emptyBagSlots, expectedInventoryCache)
	-- Disable sound effects during the swap
	local savedEnabledSFXValue
	if not Outfitter.Settings.EnableEquipSounds then
		savedEnabledSFXValue = GetCVar("Sound_EnableSFX")
		SetCVar("Sound_EnableSFX", "0")
	end
	
	-- Process each change
	for changeIndex, equipmentChange in ipairs(self) do
		local swapItems, emptyThenEquip
		
		-- Determine if an in-place swap is possible (or even necessary)
		if equipmentChange.ItemLocation then
			swapItems = true
			
			-- If the items are for different bag types, check to see if we need to
			-- separate the swap operation into Empty then Equip
			
			local equippedItemBagType = Outfitter:GetSlotIDItemBagType(equipmentChange.SlotID)
			local newItemBagType = Outfitter:GetItemLocationBagType(equipmentChange.ItemLocation)
			
			-- If the item being equipped is in a specialty bag already and the
			-- current item can't go in that bag then we have to EmptyThenEquip
			
			local newItemInBagType = equipmentChange.ItemLocation.BagIndex and Outfitter:GetBagType(equipmentChange.ItemLocation.BagIndex)
			
			if equippedItemBagType
			and newItemInBagType
			and newItemInBagType ~= 0
			and bit.band(newItemInBagType, equippedItemBagType) == 0 then
				emptyThenEquip = true
			
			-- Otherwise, if the item being unequipped has a specialty slot available, then we have to EmptyThenEquip
			
			elseif equippedItemBagType and Outfitter:FindEmptySpecialtyBagSlot(equippedItemBagType, emptyBagSlots) then
				emptyThenEquip = true
			end
		end
		
		-- Swap the item in-place with the new item
		if swapItems then
			if emptyThenEquip then
				Outfitter:UnequipSlotID(equipmentChange.SlotID, emptyBagSlots, expectedInventoryCache)
			end
			
			-- Make sure nothing is already being held
			ClearCursor()
			
			-- Pick up the item and equip it
			Outfitter:PickupItemLocation(equipmentChange.ItemLocation)
			EquipCursorItem(equipmentChange.SlotID)
			
			-- Update the expected cache
			if expectedInventoryCache then
				expectedInventoryCache:SwapLocationWithInventorySlot(equipmentChange.ItemLocation, equipmentChange.SlotName)
			end
		
		-- Remove the item
		else
			Outfitter:UnequipSlotID(equipmentChange.SlotID, emptyBagSlots, expectedInventoryCache)
		end
	end
	
	-- Make sure nothing is left behind on the cursor
	ClearCursor()
	
	-- Restore the sound effects setting
	if savedEnabledSFXValue then
		SetCVar("Sound_EnableSFX", savedEnabledSFXValue)
	end
end

function Outfitter._EquipmentChanges:debug()
	Outfitter:DebugMark()
	Outfitter:DebugTable(self, "EquipmentChanges")
end

----------------------------------------
Outfitter._EquipmentChange = Outfitter:newClass()
----------------------------------------

function Outfitter._EquipmentChange:construct(inventorySlot, itemName)
	self.SlotName = inventorySlot
	self.SlotID = Outfitter.cSlotIDs[inventorySlot]
	self.ItemName = itemName
	self.uniqueEquipTotals = {}
	
	-- Subtract the unique-equip totals to get starting values
	self:subtractInventoryUniqueEquipTotals()
	
	return change
end

function Outfitter._EquipmentChange:subtractInventoryUniqueEquipTotals()
	-- Get the item
	local itemInfo = Outfitter:GetSlotIDItemInfo(self.SlotID)
	
	-- Leave if no item
	if not itemInfo then
		return
	end
	
	-- Get the unique-equip types
	local uniqueEquipTypes = itemInfo:GetUniqueEquipTypes()
	
	-- Done if there are no unique-equip types
	if not uniqueEquipTypes then
		return
	end
	
	-- Subtract the counts
	for uniqueEquipType in pairs(uniqueEquipTypes) do
		self.uniqueEquipTotals[uniqueEquipType] = (self.uniqueEquipTotals[uniqueEquipType] or 0) - 1
	end
end

function Outfitter._EquipmentChange:addLocationUniqueEquipTotals(location)
	-- Get the item
	local itemInfo
	if location.BagIndex then
		itemInfo = Outfitter:GetBagItemInfo(location.BagIndex, location.BagSlotIndex)
	else
		itemInfo = Outfitter:GetSlotIDItemInfo(location.SlotID)
	end
	
	-- Leave if no item
	if not itemInfo then
		return
	end
	
	-- Get the unique-equip types
	local uniqueEquipTypes = itemInfo:GetUniqueEquipTypes()
	
	-- Done if there are no unique-equip types
	if not uniqueEquipTypes then
		return
	end
	
	-- Add the counts
	for uniqueEquipType in pairs(uniqueEquipTypes) do
		self.uniqueEquipTotals[uniqueEquipType] = (self.uniqueEquipTotals[uniqueEquipType] or 0) + 1
	end
end	

function Outfitter._EquipmentChange:calcUniqueEquipOrderingRank(uniqueEquipCountOffsets)
	local hasNegative, hasPositive
	
	-- Check each total
	for uniqueID, uniqueCount in pairs(self.uniqueEquipTotals) do
		if uniqueEquipCountOffsets then
			uniqueCount = uniqueCount + (uniqueEquipCountOffsets[uniqueID] or 0)
		end
		
		if uniqueCount < 0 then
			hasNegative = true
			
			if hasPositive then
				break
			end
		elseif uniqueCount > 0 then
			hasPositive = true
			
			if hasNegative then
				break
			end
		end
	end
	
	-- Changes which increase and decrease totals are given second priority so that they’re done before changes which increase only
	if hasNegative and hasPositive then
		return 2
	
	-- Changes which only increase totals are given the lowest priority so that they’re done last
	elseif hasPositive then	
		return 3
	end
	
	-- Changes which don’t affect or decrease totals are the highest priority
	return 1
end


----------------------------------------
-- Outfitter
----------------------------------------

function Outfitter:ShowEquipError(pOutfitItem, pIgnoredItem, pInventorySlot)
	if self.Settings.DisableEquipErrors then
		return
	end
	
	local vSlotDisplayName = self.cSlotDisplayNames[pInventorySlot]
	
	if not vSlotDisplayName then
		vSlotDisplayName = pInventorySlot or "nil"
	end
	
	if pOutfitItem.Name then
		if pIgnoredItem then
			self:ErrorMessage(format(self.cItemAlreadyUsedError, self:GenerateItemLink(pOutfitItem), vSlotDisplayName))
			self:DebugMessage("item already used for slot %s", vSlotDisplayName)
		else
			self:ErrorMessage(format(self.cItemNotFoundError, self:GenerateItemLink(pOutfitItem), vSlotDisplayName))
			self:DebugMessage("can't find item for slot %s", vSlotDisplayName)
		end
	else
		self:ErrorMessage(format(self.cItemNotFoundError, "unknown", vSlotDisplayName))
	end
end

function Outfitter:PickupItemLocation(pItemLocation)
	if pItemLocation == nil then
		self:ErrorMessage("nil location in PickupItemLocation")
		return
	end
	
	if pItemLocation.BagIndex then
		if CT_oldPickupContainerItem then
			CT_oldPickupContainerItem(pItemLocation.BagIndex, pItemLocation.BagSlotIndex)
		else
			PickupContainerItem(pItemLocation.BagIndex, pItemLocation.BagSlotIndex)
		end
	elseif pItemLocation.SlotName then
		PickupInventoryItem(self.cSlotIDs[pItemLocation.SlotName])
	else
		self:ErrorMessage("Unknown location in PickupItemLocation")
		return
	end
end

function Outfitter.CompareUniqueEquipOrderingRanks(change1, change2)
	if change1.uniqueEquipOrderingRank ~= change2.uniqueEquipOrderingRank then
		return change1.uniqueEquipOrderingRank < change2.uniqueEquipOrderingRank
	end
	
	return change1.uniqueEquipOrderingRank2 < change2.uniqueEquipOrderingRank2
end

Outfitter.SlotSwapList =
{
	Finger0Slot = "Finger1Slot",
	Trinket0Slot = "Trinket1Slot",
	MainHandSlot = "SecondaryHandSlot",
}

function Outfitter:FindEmptySpecialtyBagSlot(pItemBagType, pEmptyBagSlots)
	if not pEmptyBagSlots
	or not pItemBagType then
		return
	end
	
	for vSlotInfoIndex, vSlotInfo in ipairs(pEmptyBagSlots) do
		if bit.band(vSlotInfo.BagType, pItemBagType) ~= 0 then
			return vSlotInfo, vSlotInfoIndex
		end
	end
end

function Outfitter:UnequipSlotID(pSlotID, pEmptyBagSlots, pExpectedInventoryCache)
	self:MoveLocationToEmptyBagSlot(pSlotID, pEmptyBagSlots, self.cBagsFullError, pExpectedInventoryCache)
end
	
function Outfitter:MoveLocationToEmptyBagSlot(pLocation, pEmptyBagSlots, pErrorMessage, pExpectedInventoryCache)
	local vItemBagType
	
	if type(pLocation) == "table" then
		vItemBagType = self:GetItemLocationBagType(pLocation)
	else
		vItemBagType = self:GetSlotIDItemBagType(pLocation)
	end
	
	if not vItemBagType then
		return -- Location is already empty
	end
	
	-- Find a bag slot for it
	
	local vEmptySlotInfo
	
	if pEmptyBagSlots then
		-- First try for a specialized bag
		
		if vItemBagType
		and vItemBagType ~= self.cGeneralBagType then
			local vSlotInfoIndex
			
			vEmptySlotInfo, vSlotInfoIndex = self:FindEmptySpecialtyBagSlot(vItemBagType, pEmptyBagSlots)
			
			if vEmptySlotInfo then
				table.remove(pEmptyBagSlots, vSlotInfoIndex)
			end
		end

		-- Try for a general purpose bag
		
		if not vEmptySlotInfo then
			for vSlotInfoIndex, vSlotInfo in ipairs(pEmptyBagSlots) do
				if vSlotInfo.BagType == self.cGeneralBagType then
					vEmptySlotInfo = vSlotInfo
					table.remove(pEmptyBagSlots, vSlotInfoIndex)
					break
				end
			end
		end
	end
	
	--
	
	if not vEmptySlotInfo then
		local vItemLink
		if type(pLocation) == "table" then
			vItemLink = self:GetItemLocationLink(pLocation)
		else
			vItemLink = self:GetInventorySlotIDLink(pLocation)
		end
		self:ErrorMessage(format(pErrorMessage, tostring(vItemLink)))
	else
		ClearCursor() -- Make sure they aren't holding anything already or things get wonky
		
		if type(pLocation) == "table" then
			self:PickupItemLocation(pLocation)
		else
			PickupInventoryItem(pLocation)
		end
		
		self:PickupItemLocation(vEmptySlotInfo)
		
		if pExpectedInventoryCache then
			if type(pLocation) == "table" then
				pExpectedInventoryCache:SwapLocations(pLocation, vEmptySlotInfo)
			else
				pExpectedInventoryCache:SwapLocationWithInventorySlot(pLocation, self.cSlotIDToInventorySlot[pLocation])
			end
		end
	end
end

function Outfitter:BeginEquipmentUpdate()
	self.EquipmentUpdateCount = self.EquipmentUpdateCount + 1
end

function Outfitter:EndEquipmentUpdate(pCallerName, pUpdateNow)
	self.EquipmentUpdateCount = self.EquipmentUpdateCount - 1
	
	if self.EquipmentUpdateCount == 0 then
		if pUpdateNow then
			if self.Debug.EquipmentChanges then
				self:DebugMessage("EndEquipmentUpdate: updating now")
			end
			self:UpdateEquippedItems()
		else
			self:ScheduleEquipmentUpdate()
		end
		
		self:Update(false)
	end
end

function Outfitter:UpdateEquippedItems()
	if not self.EquippedNeedsUpdate then
		if self.Debug.EquipmentChanges then
			self:DebugMessage("UpdateEquippedItems: Nothing to update")
		end
		return
	end
	
	if self.Debug.EquipmentChanges then
		self:DebugMessage("UpdateEquippedItems: updating equipment")
	end
	
	-- Delay all changes until they're alive or not casting a spell
	
	if self.IsDead
	or not self.InterruptCasting and (self.IsCasting or self.IsChanneling) then
		if self.Debug.EquipmentChanges then
			self:DebugMessage("UpdateEquippedItems: deferring while casting")
		end
		
		return
	end
	
	self.InterruptCasting = nil
	
	local vCurrentTime = GetTime()
	
	if vCurrentTime - self.LastEquipmentUpdateTime < self.cMinEquipmentUpdateInterval then
		if self.Debug.EquipmentChanges then
			self:DebugMessage("UpdateEquippedItems: deferring for min interval")
		end
		
		self:ScheduleEquipmentUpdate()
		return
	end
	
	self.LastEquipmentUpdateTime = vCurrentTime
	
	self.EquippedNeedsUpdate = false
	
	-- Compile the outfit
	
	local vInventoryCache = self:GetInventoryCache()
	local vCompiledOutfit = self:GetCompiledOutfit()
	
	if self.Debug.EquipmentChanges then
		self:DebugOutfitTable(vCompiledOutfit, "CompiledOutfit0")
	end
	
	-- When in combat delay the outfit change until
	-- combat ends
	
	if self.InCombat or self.MaybeInCombat then
		self.EquippedNeedsUpdate = true
		self.MaybeInCombat = false
		self:ScheduleEquipmentUpdate()
		return
	end
	
	-- Equip it
	
	local vEquipmentChangeList = Outfitter:New(Outfitter._EquipmentChanges)
	vEquipmentChangeList:addChangesToEquipOutfit(vCompiledOutfit, vInventoryCache)
	
	if vEquipmentChangeList then
		-- local vExpectedInventoryCache = self:New(self._InventoryCache)
	
		if self.Debug.EquipmentChanges then
			self:DebugMessage("UpdateEquippedItems: Executing change list")
			self:DebugTable(vEquipmentChangeList, "ChangeList")
		end
		
		vEquipmentChangeList:execute(self:GetEmptyBagSlotList(), vExpectedInventoryCache)
	else
		if self.Debug.EquipmentChanges then
			self:DebugMessage("UpdateEquippedItems: No change list generated")
		end
	end
	
	-- Update the outfit we're expecting to see on the player
	
	local vItems = vCompiledOutfit:GetItems()
	
	for vInventorySlot, vItem in pairs(vItems) do
		self.ExpectedOutfit:SetItem(vInventorySlot, vItem)
	end
	
	if self.Debug.EquipmentChanges then
		self:DebugOutfitTable(vCompiledOutfit, "CompiledOutfit")
	end
	
	self.MaybeInCombat = false
	
	self:ScheduleEquipmentUpdate()
end

function Outfitter:DebugOutfitTable(pOutfit, pPrefix)
	local vPrefix = pPrefix or pOutfit.Name or "unnamed"
	local vItems = pOutfit:GetItems()
	
	if not vItems then
		self:DebugMessage("%s: No items", vPrefix)
		return
	end
	
	for vInventorySlot, vItem in pairs(vItems) do
		if vItem.Code == 0 then
			self:DebugMessage("%s.%s: Empty slot", vPrefix, vInventorySlot)
		else
			self:DebugMessage("%s.%s: %s", vPrefix, vInventorySlot, tostring(vItem.Link))
		end
	end
end

function Outfitter:ScheduleEquipmentUpdate()
	if not self.EquippedNeedsUpdate then
		return
	end
	
	local vElapsed = GetTime() - self.LastEquipmentUpdateTime
	local vDelay = self.cMinEquipmentUpdateInterval - vElapsed
	
	 if vDelay < 0.05 then
		vDelay = 0.05
	end
	
	if self.Debug.EquipmentChanges then
		self:DebugMessage("ScheduleEquipmentUpdate: updating in %d seconds", vDelay)
	end
	
	self.SchedulerLib:ScheduleUniqueTask(vDelay, self.UpdateEquippedItems, self)
end

----------------------------------------
-- Outfitter.OutfitStack
----------------------------------------

function Outfitter.OutfitStack:Initialize()
	self:RestoreSavedStack()
end

function Outfitter.OutfitStack:RestoreSavedStack()
	if not gOutfitter_Settings.LastOutfitStack then
		gOutfitter_Settings.LastOutfitStack = {}
	end
	
	for vIndex, vOutfit in ipairs(gOutfitter_Settings.LastOutfitStack) do
		if vOutfit.Name then
			vOutfit = Outfitter:FindOutfitByName(vOutfit.Name)
		else
			setmetatable(vOutfit, Outfitter._OutfitMetaTable)
		end
		
		if vOutfit and vOutfit:GetItems() then
			table.insert(self.Outfits, vOutfit)
		end
	end
	
	Outfitter.ExpectedOutfit = Outfitter:GetCompiledOutfit()
	
	Outfitter:UpdateTemporaryOutfit(Outfitter:GetNewItemsOutfit(Outfitter.ExpectedOutfit))
	
	if gOutfitter_Settings.Options.ShowStackContents then
		self:DebugOutfitStack("Restore saved stack")
	end
end

function Outfitter.OutfitStack:AddOutfit(pOutfit, pLayerID)
	local vFound, vIndex = self:FindOutfit(pOutfit)
	
	-- If it's already the topmost outfit just ignore the request
	
	if vFound and vIndex == #self.Outfits then
		return
	end
	
	-- If it's already on then remove it from the stack
	-- so it can be added to the end
	
	if vFound then
		table.remove(self.Outfits, vIndex)
		table.remove(gOutfitter_Settings.LastOutfitStack, vIndex)
		
		for vLayerID, vLayerIndex in pairs(gOutfitter_Settings.LayerIndex) do
			if vIndex < vLayerIndex then
				gOutfitter_Settings.LayerIndex[vLayerID] = vLayerIndex - 1
			end
		end
		
		Outfitter:DispatchOutfitEvent("UNWEAR_OUTFIT", pOutfit:GetName(), pOutfit)
	end
	
	-- Figure out the position to insert at
	
	local vStackLength = #self.Outfits
	local vInsertIndex = vStackLength + 1
	
	local vLayerIndex = gOutfitter_Settings.LayerIndex[pLayerID]
	
	if vLayerIndex then
		vInsertIndex = vLayerIndex
	end
	
	if pLayerID then
		gOutfitter_Settings.LayerIndex[pLayerID] = vInsertIndex
	end
	
	-- Adjust the layer indices
	
	for vLayerID, vLayerIndex in pairs(gOutfitter_Settings.LayerIndex) do
		if vInsertIndex < vLayerIndex then
			gOutfitter_Settings.LayerIndex[vLayerID] = vLayerIndex + 1
		end
	end
	
	-- Add the outfit
	
	table.insert(self.Outfits, vInsertIndex, pOutfit)
	
	if pOutfit:GetName() then
		table.insert(gOutfitter_Settings.LastOutfitStack, vInsertIndex, {Name = pOutfit:GetName()})
	else
		table.insert(gOutfitter_Settings.LastOutfitStack, vInsertIndex, pOutfit)
	end
	
	Outfitter.DisplayIsDirty = true
	
	if gOutfitter_Settings.Options.ShowStackContents then
		self:DebugOutfitStack("Add outfit")
	end
	
	if vFound then
		self:CollapseTemporaryOutfits()
	end
	
	Outfitter:DispatchOutfitEvent("WEAR_OUTFIT", pOutfit:GetName(), pOutfit)
end

function Outfitter.OutfitStack:RemoveOutfit(pOutfit)
	local vFound, vIndex = self:FindOutfit(pOutfit)
	
	if not vFound then
		return false
	end
	
	-- Remove the outfit
	
	table.remove(self.Outfits, vIndex)
	table.remove(gOutfitter_Settings.LastOutfitStack, vIndex)
	
	self:CollapseTemporaryOutfits()
			
	for vLayerID, vLayerIndex in pairs(gOutfitter_Settings.LayerIndex) do
		if vIndex < vLayerIndex then
			gOutfitter_Settings.LayerIndex[vLayerID] = vLayerIndex - 1
		end
	end
	
	Outfitter.DisplayIsDirty = true
	
	if gOutfitter_Settings.Options.ShowStackContents then
		self:DebugOutfitStack("Remove outfit")
	end
	
	return true
end

function Outfitter.OutfitStack:FindOutfit(pOutfit)
	for vIndex, vOutfit in ipairs(self.Outfits) do
		if vOutfit == pOutfit then
			return true, vIndex
		end
	end
	
	return false, nil
end

function Outfitter.OutfitStack:FindOutfitByCategory(pCategoryID)
	for vIndex, vOutfit in ipairs(self.Outfits) do
		if vOutfit.CategoryID == pCategoryID then
			return true, vIndex
		end
	end
	
	return false, nil
end

function Outfitter.OutfitStack:Clear()
	for vIndex, vOutfit in ipairs(self.Outfits) do
		Outfitter:DispatchOutfitEvent("UNWEAR_OUTFIT", vOutfit:GetName(), vOutfit)
	end
	
	wipe(self.Outfits)
	
	gOutfitter_Settings.LastOutfitStack = Outfitter:RecycleTable(gOutfitter_Settings.LastOutfitStack)
	gOutfitter_Settings.LayerIndex = Outfitter:RecycleTable(gOutfitter_Settings.LayerIndex)
	Outfitter.DisplayIsDirty = true
	
	if gOutfitter_Settings.Options.ShowStackContents then
		Outfitter:DebugMessage("Outfitter stack cleared")
	end
end

function Outfitter.OutfitStack:ClearCategory(pCategoryID)
	local vIndex = 1
	local vStackLength = #self.Outfits
	local vChanged = false
	
	while vIndex <= vStackLength do
		local vOutfit = self.Outfits[vIndex]
		
		if vOutfit
		and vOutfit.CategoryID == pCategoryID then
			-- Remove the outfit from the stack
			
			table.remove(self.Outfits, vIndex)
			table.remove(gOutfitter_Settings.LastOutfitStack, vIndex)
			
			vStackLength = vStackLength - 1
			vChanged = true
			
			-- Adjust the layer indices
			
			for vLayerID, vLayerIndex in pairs(gOutfitter_Settings.LayerIndex) do
				if vIndex < vLayerIndex then
					gOutfitter_Settings.LayerIndex[vLayerID] = vLayerIndex - 1
				end
			end
			
			Outfitter:DispatchOutfitEvent("UNWEAR_OUTFIT", vOutfit:GetName(), vOutfit)
		else
			vIndex = vIndex + 1
		end
	end
	
	self:CollapseTemporaryOutfits()
	
	if vChanged then
		if gOutfitter_Settings.Options.ShowStackContents then
			self:DebugOutfitStack("Clear category "..pCategoryID)
		end
		
		Outfitter.DisplayIsDirty = true
	end
end

function Outfitter.OutfitStack:GetTemporaryOutfit()
	local vStackSize = #self.Outfits
	
	if vStackSize == 0 then
		return nil
	end
	
	local vOutfit = self.Outfits[vStackSize]
	
	if vOutfit:GetName() then
		return nil
	end
	
	return vOutfit
end

function Outfitter.OutfitStack:CollapseTemporaryOutfits()
	local vIndex = 1
	local vStackLength = #self.Outfits
	local vTemporaryOutfit1 = nil
	
	while vIndex <= vStackLength do
		local vOutfit = self.Outfits[vIndex]
		
		if vOutfit
		and vOutfit:GetName() == nil then
			if vTemporaryOutfit1 then
				-- Copy the items up
				
				local vTemporaryItems = vTemporaryOutfit1:GetItems()
				
				for vInventorySlot, vItem in pairs(vTemporaryItems) do
					if not vOutfit:SlotIsEnabled(vInventorySlot) then
						vOutfit:SetItem(vInventorySlot, vItem)
					end
				end
				
				-- Remove the lower temp outfit
				
				table.remove(self.Outfits, vIndex - 1)
				vStackLength = vStackLength - 1
			else
				vIndex = vIndex + 1
			end
			
			vTemporaryOutfit1 = vOutfit
		else
			vTemporaryOutfit1 = nil
			vIndex = vIndex + 1
		end
	end
end

function Outfitter.OutfitStack:IsTopmostOutfit(pOutfit)
	local vStackLength = #self.Outfits
	
	if vStackLength == 0 then
		return false
	end
	
	return self.Outfits[vStackLength] == pOutfit
end

function Outfitter.OutfitStack:UpdateOutfitDisplay()
	local vShowTitleID
	
	for vIndex, vOutfit in ipairs(self.Outfits) do
		if vOutfit.ShowTitleID ~= nil then
			vShowTitleID = vOutfit.ShowTitleID
		end
	end -- for
	
	if vShowTitleID ~= nil
	and Outfitter.HasHWEvent then
		SetCurrentTitle(vShowTitleID)
	end
end

function Outfitter:TagOutfitLayer(pOutfit, pLayerID)
	local vFound, vIndex = self.OutfitStack:FindOutfit(pOutfit)
	
	if not vFound then
		return
	end
	
	gOutfitter_Settings.LayerIndex[pLayerID] = vIndex
end

function Outfitter.OutfitStack:DebugOutfitStack(pOperation)
	Outfitter:DebugMessage("Outfitter Stack Contents: "..pOperation)
	
	for vIndex, vOutfit in ipairs(self.Outfits) do
		if vOutfit:GetName() then
			Outfitter:DebugMessage("Slot "..vIndex..": "..vOutfit:GetName())
		else
			Outfitter:DebugMessage("Slot "..vIndex..": Temporaray outfit")
		end
	end
	
	Outfitter:DebugTable(gOutfitter_Settings.LayerIndex, "LayerIndex")
end

function Outfitter.OutfitStack:GetCurrentOutfitInfo()
	local vStackLength = #self.Outfits
	
	if vStackLength == 0 then
		return "", nil
	end
	
	local vOutfit = self.Outfits[vStackLength]
	
	if vOutfit and vOutfit:GetName() then
		return vOutfit:GetName(), vOutfit
	else
		return Outfitter.cCustom, vOutfit
	end
end

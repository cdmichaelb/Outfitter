--[[----------------------------------------
Outfitter._FlyoutQuickSlots = {}
----------------------------------------

function Outfitter._FlyoutQuickSlots:Construct()
	for _, vSlotName in ipairs(Outfitter.cSlotNames) do
		local vSlotButton = _G["Character"..vSlotName]
		if vSlotButton then
			Outfitter:HookScript(vSlotButton, "PreClick", function (...) self:PreClick(...) end)
			Outfitter:HookScript(vSlotButton, "PostClick", function (...) self:PostClick(...) end)
		end
	end
	
	local vFlyoutSettings = PaperDollItemsFrame.flyoutSettings
	local vOrigGetItemsFunc = vFlyoutSettings.getItemsFunc
	vFlyoutSettings.getItemsFunc = function (pSlotID, pItemTable, ...)
		vOrigGetItemsFunc(pSlotID, pItemTable, ...)
		-- Remove items on the player from the choices
		for vLocation, vItemID in next, pItemTable do
			local vOnPlayer = bit.band(vLocation, ITEM_INVENTORY_LOCATION_PLAYER + ITEM_INVENTORY_LOCATION_BAGS + ITEM_INVENTORY_LOCATION_BANK) == ITEM_INVENTORY_LOCATION_PLAYER
			if vOnPlayer then pItemTable[vLocation] = nil end
		end
	end
	local vOrigPostGetItemsFunc = vFlyoutSettings.postGetItemsFunc
	vFlyoutSettings.postGetItemsFunc = function (pItemSlotButton, pItemDisplayTable, pNumItems)
		local vNumItems = vOrigPostGetItemsFunc(pItemSlotButton, pItemDisplayTable, pNumItems)
		-- If the first item is the PLACEINBAGS item, then move it to the end
		if vNumItems > 0 and (pItemDisplayTable[1] == EQUIPMENTFLYOUT_PLACEINBAGS_LOCATION) then
			table.remove(pItemDisplayTable, 1)
			table.insert(pItemDisplayTable, EQUIPMENTFLYOUT_PLACEINBAGS_LOCATION)
		end
		return vNumItems
	end
end

function Outfitter._FlyoutQuickSlots:PreClick(pButton, ...)
	self.CurrentInventorySlot = Outfitter.cSlotIDToInventorySlot[pButton:GetID()]
end

function Outfitter._FlyoutQuickSlots:PostClick(pButton, ...)
	local vSlotItemLink = Outfitter:GetInventorySlotIDLink(pButton.id or pButton:GetID())
	
	if EquipmentFlyoutFrame:IsVisible() and EquipmentFlyoutFrame.button == pButton then
		EquipmentFlyoutFrame:Hide()

	-- If there's an item on the cursor after clicking or the slot is empty then open the flyout
	else
	if CursorHasItem() or not vSlotItemLink then
		pButton.popoutButton.flyoutLocked = true
		EquipmentFlyout_Show(pButton)
		EquipmentFlyoutPopoutButton_SetReversed(pButton.popoutButton, true)
	end
end

----------------------------------------
----------------------------------------

function Outfitter:InitializeQuickSlots()
	Outfitter.QuickSlots = Outfitter:New(Outfitter._FlyoutQuickSlots)
end

Outfitter:RegisterOutfitEvent("OUTFITTER_INIT", function () Outfitter:InitializeQuickSlots() end)
--]]

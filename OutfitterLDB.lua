Outfitter.LDB = {}

function Outfitter.LDB:Initialize()
	self.LDB = LibStub("LibDataBroker-1.1", true)
	self.DataObj = self.LDB:NewDataObject(Outfitter.cTitle,
	{
		type = "data source",
		icon = "Interface\\AddOns\\Outfitter\\Textures\\Icon",
		text = "Outfitter",
		OnClick = function(pFrame, pButton) self:OnClick(pFrame, pButton) end
	})
	
	Outfitter:RegisterOutfitEvent("WEAR_OUTFIT", function (...) self:OutfitEvent(...) end)
	Outfitter:RegisterOutfitEvent("UNWEAR_OUTFIT", function (...) self:OutfitEvent(...) end)
	Outfitter:RegisterOutfitEvent("OUTFITTER_INIT", function (...) self:OutfitEvent(...) end)
end

function Outfitter.LDB:OnClick(pFrame, pButton)
	if pButton == "LeftButton" then
		self:ToggleMenu()
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
	else
		Outfitter:ToggleUI(true)
	end
end

function Outfitter.LDB:OutfitEvent(pEvent, pOutfitName, pOutfit)
	local vOutfitName, vOutfit = Outfitter:GetCurrentOutfitInfo()
	
	if vOutfit then
		self.DataObj.text = vOutfitName
		self.DataObj.icon = Outfitter.OutfitBar:GetOutfitTexture(vOutfit)
	else
		self.DataObj.text = Outfitter.cTitle
		self.DataObj.icon = "Interface\\AddOns\\Outfitter\\Textures\\Icon"
	end
end

function Outfitter.LDB:ToggleMenu()
	if self.dropDownMenu then
		self:HideMenu()
	else
		self:ShowMenu()
	end
end

function Outfitter.LDB:ShowMenu()
	assert(not self.dropDownMenu, "can't show the LDB menu while it's already up")

	-- Create the items
	items = Outfitter:New(Outfitter.UIElementsLib._DropDownMenuItems, function ()
		
		-- Close the menu after a short delay when a menu item is selected
		Outfitter.SchedulerLib:ScheduleTask(0.1, function ()
			self:HideMenu()
		end)
	end)

	-- Get the items
	Outfitter:GetMinimapDropdownItems(items)

	-- Get the cursor position
	local cursorX, cursorY = GetCursorPosition()
	local scaling = UIParent:GetEffectiveScale()
	cursorX = cursorX / scaling
	cursorY = cursorY / scaling

	-- Use the screen quadrant as an anchor for the menu
	local quadrant = Outfitter:GetScreenQuadrantFromCoordinates(cursorX, cursorY)

	-- Show the menu
	self.dropDownMenu = Outfitter:New(Outfitter.UIElementsLib._DropDownMenu)
	self.dropDownMenu:Show(items, quadrant, UIParent, "BOTTOMLEFT", cursorX, cursorY)
	self.dropDownMenu.cleanup = function ()
		self.dropDownMenu = nil
	end
end

function Outfitter.LDB:HideMenu()
	if not self.dropDownMenu then
		return
	end

	self.dropDownMenu:Hide()
	self.dropDownMenu = nil
end

Outfitter.LDB:Initialize()

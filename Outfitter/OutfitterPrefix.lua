----------------------------------------
-- Outfitter Copyright 2009-2018 John Stephen
-- All rights reserved, unauthorized redistribution is prohibited
----------------------------------------

local _
_, Outfitter = ...

Outfitter.DebugColorCode = "|cff99ffcc"
Outfitter.AddonPath = "Interface\\Addons\\"..select(1, ...).."\\"
Outfitter.UIElementsLibTexturePath = Outfitter.AddonPath
Outfitter.Debug = {}

--

Outfitter.LibBabbleSubZone = LibStub("LibBabble-SubZone-3.0")
Outfitter.LibBabbleInventory = LibStub("LibBabble-Inventory-3.0")
Outfitter.LibTipHooker = LibStub("LibTipHooker-1.1")
Outfitter.LBF = LibStub("LibButtonFacade", true)
Outfitter.LibDropdown = LibStub("LibDropdownMC-1.0")

Outfitter.LBI = Outfitter.LibBabbleInventory:GetLookupTable()
Outfitter.LSZ = Outfitter.LibBabbleSubZone:GetLookupTable()

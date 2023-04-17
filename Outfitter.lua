----------------------------------------
-- Outfitter Copyright 2006-2018 John Stephen
----------------------------------------
Outfitter.Debug =
{
	InventoryCache = false,
	EquipmentChanges = false,
	EquipmentManager = false,
	NewItems = false,
	TemporaryItems = false,
	Optimize = false,
}

----------------------------------------
Outfitter.CreditPlayersByRealm =
--
-- 0 Friend
-- 1 Tester or developer (bugfixes, enhancements, etc.)
-- 2 Localizer
-- 3 Donor
----------------------------------------
{
	["Ace Library"] = {
		["LibBabble"] = 2,
		["LibBabble-Zone"] = 2,
		["LibBabble-SubZone"] = 2,
		["LibBabble-Inventory"] = 2,
		["LibDataBroker"] = 2,
		["LibTipHooker"] = 2,
		["LibDropdown"] = 2,
	},
	[Outfitter.cGermanLocalization] =
	{
		["Ani"] = 2,
		["Zokrym"] = 2,
		["Dessa"] = 2,
	},
	[Outfitter.cChineseLocalization] =
	{
		["AndyAska"] = 2,
		["xingdvd"] = 2,
	},
	[Outfitter.cFrenchLocalization] =
	{
		["Jullye"] = 2,
		["Quetzaco"] = 2,
		["Ekhurr"] = 2,
		["Negwe"] = 2,
	},
	[Outfitter.cSpanishLocalization] =
	{
		["Marutak"] = 2,
		["Marosth"] = 2,
	},
	[Outfitter.cRussianLocalization] =
	{
		["Delika"] = 2,
	},
	[Outfitter.cKoreanLocalization] =
	{
		["Unknown"] = 2,
	},
	[Outfitter.cContributingDeveloper] =
	{
		["Miv\n\"Restoshaman\"\n<Onslaught>"] = 1,
		["Dridzt"] = 1,
		["Bruce Quinton"] = 1,
		["Kal_Zakath13"] = 1,
		["Smurfy"] = 1,
		["XMinionX"] = 1,
		["Dussander"] = 1,
		["Echobravo"] = 1,
		["MacGregor"] = 1,
		["LaoTseu"] = 1,
		["Irozal"] = 1,
		["EmForAce"] = 1,
		["durandal42"] = 1,
		["Dicebar"] = 1,
		["Silarn"] = 1,
		["slippycheeze"] = 1,
		["binul"] = 1,
		["elaundar"] = 1,
		["Bodar"] = 1,
		["chullah"] = 1,
		["AoR_Derangement"] = 1,
	},
	["Tester"] =
	{
		["Whishann"] = 1,
		["HunterZ"] = 1,
		["docthis"] = 1,
		["Irdx"] = 1,
		["TigaFIN"] = 1,
		["iceeagle"] = 1,
		["Denrax"] = 1,
		["rasmoe"] = 1,
		["Katlefiya"] = 1,
		["gtmsece"] = 1,
		["Militis"] = 1,
		["Casard"] = 1,
		["saltorio"] = 1,
		["elusif"] = 1,
		["DanoPDX"] = 1,
	},
	[""] =
	{
		["Kristi H."] = 3,
		["Lawrence C."] = 3,
		["Hellrush"] = 3,
		["Fusyion"] = 3,
		["Matt R."] = 3,
		["Richard F.\n<Greatest Addon Supporter>"] = 3,
	},
	["Alterac Mountains"] =
	{
		["Asgeirr\n<The Stone Council>"] = 3,
	},
	["Aman'Thul"] =
	{
		["Blessmie\n<Chairman of the Horde>"] = 3,
		["Zanoroy\n<The Mighty Few>"] = 3,
	},
	["Antonidas"] =
	{
		["Colina\n<Drunken Monkey Brigade>"] = 3,
	},
	["Anvilmar"] =
	{
		["Droodwrmycar"] = 3,
	},
	["Azgalore"] =
	{
		["Dankris\n<Caligula's Pleasures>"] = 3,
	},
	["Azjol-Nerub"] =
	{
		["Mythris"] = 3,
	},
	["Blackwater Raiders"] =
	{
		["Maumau\n<No Quarter>"] = 3,
	},
	["Bronzebeard"] =
	{
		["Jiminimonka\n<Go Rin No Sho>"] = 3,
	},
	["Dalaran"] =
	{
		["Y C\n<Blurred Reality>"] = 3,
	},
	["Defias Brotherhood"] =
	{
		["Maelmoor"] = 3,
	},
	["Draenor"] =
	{
		["Emmerald\n<Adept>"] = 3,
	},
	["Draka"] =
	{
		["Nagem\n<Loch Modan Yacht Club"] = 3,
	},
	["Durotar"] =
	{
		["Haguen"] = 3,
	},
	Ghostlands =
	{
		Nounchok = 3,
	},
	["Gnomeregan"] =
	{
		["Calind\n<Swords of the Alliance>"] = 3,
	},
	["Jubei'Thos"] =
	{
		["Thoresen\n<Verb>"] = 3,
		["Thorgils"] = 3,
	},
	["Kargath"] =
	{
		["Leara"] = 3,
		["Burnaron\nLiga of Faliviens"] = 3,
	},
	["Khaz Modan"] =
	{
		["Faizal"] = 3,
	},
	["Khaz'goroth"] =
	{
		["Xentric\n<Cult of the Nuzzled Nark>"] = 3,
	},
	["Kul'Tiras"] =
	{
		["Tharca"] = 3,
	},
	["Lightbringer"] =
	{
		["Teldra\n<The Trust>"] = 3,
	},
	["Llane"] =
	{
		["Chirily"] = 3,
	},
	["Malfurion"] =
	{
		["Zetac\n<Hold Fast>"] = 3,
	},
	["Moonglade"] =
	{
		["Ciev"] = 3,
	},
	["Rexxar"] =
	{
		["Blitzi\n<Absolution>"] = 3,
	},
	["Scilla"] =
	{
		["Blam\n<Syndicate>"] = 3,
	},
	["Sentinels"] =
	{
		["Dhaktar"] = 3,
	},
	["Skywall"] =
	{
		["Valerya"] = 3,
	},
	["Suramar"] =
	{
		["Zendex"] = 3,
		["Klaxon\n<Forbidden Planet"] = 3,
	},
	["Terrokkar"] =
	{
		["Extropianus\n<The First Immortals>"] = 3,
	},
	["Thorium Brotherhood"] =
	{
		["Pitchifus\n<Bloodforged>"] = 0,
		Tiae = 0,
		Airmid = 0,
		Pistachio = 0,
		Fizzlebang = 0,
		[Outfitter.cGuildCreditFormat:format("Bloodforged")] = 1,
	},
	["Ysondre"] =
	{
		["Steikfrit"] = 3,
	},
	["Zangarmarsh"] =
	{
		["Feliany"] = 3,
	},
}

Outfitter.BannedCharacters = {
}

----------------------------------------
----------------------------------------

gOutfitter_Settings = nil
gOutfitter_GlobalSettings = nil

Outfitter.Initialized = false
Outfitter.Suspended = false

-- Outfit state

Outfitter.OutfitStack = {}
Outfitter.OutfitStack.Outfits = {}

Outfitter.CurrentOutfit = nil
Outfitter.ExpectedOutfit = nil
Outfitter.CurrentInventoryOutfit = nil

Outfitter.EquippedNeedsUpdate = false
Outfitter.LastEquipmentUpdateTime = 0

Outfitter.SpecialState = {} -- The current state as determined by the engine, not necessarily the state of the outfit itself

-- Player state

Outfitter.CurrentZone = ""
Outfitter.CurrentZoneIDs = {}

Outfitter.InCombat = false
Outfitter.MaybeInCombat = false

Outfitter.IsDead = false
Outfitter.IsFeigning = false

Outfitter.BankFrameIsOpen = false
Outfitter.VoidStorageIsOpen = false

Outfitter.HasHWEvent = false

Outfitter.SettingTypeInfo =
{
	string      = {Default = "",    FrameType = "EditBox"          },
	number      = {Default = 0,     FrameType = "EditBox"          },
	stringtable = {Default = {},    FrameType = "ScrollableEditBox"},
	zonelist    = {Default = {},    FrameType = "ZoneListEditBox"  },
	boolean     = {Default = false, FrameType = "Checkbox"         },
}

Outfitter.Style = {}

Outfitter.Style.ButtonBar =
{
	ButtonHeight = 37,
	ButtonWidth = 37,

	BackgroundTextureHeight = 128,
	BackgroundTextureWidth = 128,

	BackgroundWidth = 42,
	BackgroundWidth0 = 26,
	BackgroundWidthN = 27,

	BackgroundHeight = 41,
	BackgroundHeight0 = 28,
	BackgroundHeightN = 25,
}

-- UI

Outfitter.CurrentPanel = 0
Outfitter.Collapsed = {}
Outfitter.SelectedOutfit = nil
Outfitter.DisplayIsDirty = true
Outfitter.OutfitInfoCache = {}

Outfitter.MaxSimpleTitles = 10

function Outfitter:FormatItemList(pList)
	local vNumItems = #pList

	if vNumItems == 0 then
		return ""
	elseif vNumItems == 1 then
		return string.format(self.cSingleItemFormat, pList[1])
	elseif vNumItems == 2 then
		return string.format(self.cTwoItemFormat, pList[1], pList[2])
	else
		local vStartIndex, vEndIndex, vPrefix, vRepeat, vSuffix = string.find(self.cMultiItemFormat, "(.*){{(.*)}}(.*)")
		local vResult
		local vParamIndex = 1

		if vPrefix and string.find(vPrefix, "%%") then
			vResult = string.format(vPrefix, pList[1])
			vParamIndex = 2
		else
			vResult = vPrefix or ""
		end

		if vRepeat then
			for vIndex = vParamIndex, vNumItems - 1 do
				vResult = vResult..string.format(vRepeat, pList[vIndex])
			end
		end

		if vSuffix then
			vResult = vResult..string.format(vSuffix, pList[vNumItems])
		end

		return vResult
	end
end

-- Define global variables to be used directly in the XML
-- file since those references can't be object paths

Outfitter_cTitle = Outfitter.cTitle
Outfitter_cTitleVersion = Outfitter.cTitleVersion

Outfitter_cCreateUsingTitle = Outfitter.cCreateUsingTitle
Outfitter_cAutomationLabel = Outfitter.cAutomationLabel
Outfitter_cOutfitterTabTitle = Outfitter.cOutfitterTabTitle
Outfitter_cOptionsTabTitle = Outfitter.cOptionsTabTitle
Outfitter_cAboutTabTitle = Outfitter.cAboutTabTitle

Outfitter_cNewOutfit = Outfitter.cNewOutfit
Outfitter_cNameAlreadyUsedError = Outfitter.cNameAlreadyUsedError
Outfitter_cEnableAll = Outfitter.cEnableAll
Outfitter_cEnableNone = Outfitter.cEnableNone
Outfitter_cOptionsTitle = Outfitter.cOptionsTitle

Outfitter_cEditScriptTitle = Outfitter.cEditScriptTitle
Outfitter_cEditScriptEllide = Outfitter.cEditScriptEllide
Outfitter_cPresetScript = Outfitter.cPresetScript
Outfitter_cSettings = Outfitter.cSettings
Outfitter_cSource = Outfitter.cSource

Outfitter_cIconFilterLabel = Outfitter.cIconFilterLabel
Outfitter_cIconSetLabel = Outfitter.cIconSetLabel

-- These definitions are for backward compatibility with third-party addons
-- which call into Outfitter directly (OutfitterFu, FishingBuddy, ArkInventory)
-- Hopefully the authors of those addons will eventually migrate their code to
-- use the new functions instead so that these can eventually be eliminated.

Outfitter_cCompleteOutfits = Outfitter.cCompleteOutfits
Outfitter_cAccessoryOutfits = Outfitter.cAccessoryOutfits
Outfitter_cOddsNEndsOutfits = Outfitter.cOddsNEndsOutfits

function Outfitter_OnLoad(...) return Outfitter:OnLoad(...) end
function Outfitter_IsInitialized(...) return Outfitter:IsInitialized(...) end
function Outfitter_Update(...) return Outfitter:Update(...) end

function Outfitter_FindOutfitByStatID(...) return Outfitter:FindOutfitByStatID(...) end
function Outfitter_FindOutfitByName(...) return Outfitter:FindOutfitByName(...) end

function Outfitter_GetCategoryOrder(...) return Outfitter:GetCategoryOrder(...) end
function Outfitter_GetOutfitsByCategoryID(...) return Outfitter:GetOutfitsByCategoryID(...) end
function Outfitter_HasVisibleOutfits(...) return Outfitter:HasVisibleOutfits(...) end
function Outfitter_OutfitIsVisible(...) return Outfitter:OutfitIsVisible(...) end

function Outfitter_GenerateSmartOutfit(pName, pStat, pInventoryCache, pAllowEmptyOutfit) return Outfitter:GenerateSmartOutfit(pName, pStat, pInventoryCache, pAllowEmptyOutfit) end
function Outfitter_AddOutfit(...) return Outfitter:AddOutfit(...) end
function Outfitter_DeleteOutfit(...) return Outfitter:DeleteOutfit(...) end

function Outfitter_WearOutfit(pOutfit, pCategoryID, pWearBelowOutfit) return Outfitter:WearOutfit(pOutfit) end
function Outfitter_RemoveOutfit(...) return Outfitter:RemoveOutfit(...) end
function Outfitter_WearingOutfit(...) return Outfitter:WearingOutfit(...) end

function Outfitter_RegisterOutfitEvent(...) return Outfitter:RegisterOutfitEvent(...) end
function Outfitter_UnregisterOutfitEvent(...) return Outfitter:UnregisterOutfitEvent(...) end

function Outfitter_GetCurrentOutfitInfo(...) return Outfitter:GetCurrentOutfitInfo(...) end
function Outfitter_SetShowMinimapButton(...) return Outfitter:SetShowMinimapButton(...) end

function Outfitter_GetItemInfoFromLink(...) return Outfitter:GetItemInfoFromLink(...) end
function Outfitter_GetOutfitsUsingItem(...) return Outfitter:GetOutfitsUsingItem(...) end

function OutfitterItemList_GetEquippableItems(...) return Outfitter:GetInventoryCache(...) end
function OutfitterItemList_GetMissingItems(pItemList, ...) return pItemList:GetMissingItems(...) end

function Outfitter.ItemList_GetEquippableItems(...) return Outfitter:GetInventoryCache(...) end
function Outfitter.ItemList_GetMissingItems(pItemList, ...) return pItemList:GetMissingItems(...) end

function Outfitter:OutfitUsesItem(pOutfit, pItemInfo) return pOutfit:OutfitUsesItem(pItemInfo) end

--

Outfitter.cMinEquipmentUpdateInterval = 1.5

Outfitter.cInitializationEvents =
{
	["PLAYER_ENTERING_WORLD"] = true,
	["BAG_UPDATE"] = true,
	["UNIT_INVENTORY_CHANGED"] = true,
	["ZONE_CHANGED_NEW_AREA"] = true,
	["ZONE_CHANGED"] = true,
	["ZONE_CHANGED_INDOORS"] = true,
	["PLAYER_ALIVE"] = true,
}

-- Beginning in patch 8.0, WoW throws errors when registering for events which don't exist. This table contains all builtin event IDs so they can be avoided when registering events.
Outfitter.BuiltinEvents = {
	["TIMER"] = true,

	["GAMETOOLTIP_SHOW"] = true,
	["GAMETOOLTIP_HIDE"] = true,

	["BATTLEGROUND"] = true,
	["NOT_BATTLEGROUND"] = true,

	["BATTLEGROUND_AV"] = true,
	["NOT_BATTLEGROUND_AV"] = true,

	["BATTLEGROUND_AB"] = true,
	["NOT_BATTLEGROUND_AB"] = true,

	["BATTLEGROUND_ARENA"] = true,
	["NOT_BATTLEGROUND_ARENA"] = true,

	["BATTLEGROUND_BLADESEDGE"] = true,
	["NOT_BATTLEGROUND_BLADESEDGE"] = true,

	["BATTLEGROUND_EOTS"] = true,
	["NOT_BATTLEGROUND_EOTS"] = true,

	["BATTLEGROUND_GILNEAS"] = true,
	["NOT_BATTLEGROUND_GILNEAS"] = true,

	["BATTLEGROUND_IOC"] = true,
	["NOT_BATTLEGROUND_IOC"] = true,

	["BATTLEGROUND_NAGRAND"] = true,
	["NOT_BATTLEGROUND_NAGRAND"] = true,

	["BATTLEGROUND_LORDAERON"] = true,
	["NOT_BATTLEGROUND_LORDAERON"] = true,

	["BATTLEGROUND_ROV"] = true,
	["NOT_BATTLEGROUND_ROV"] = true,

	["BATTLEGROUND_SEWERS"] = true,
	["NOT_BATTLEGROUND_SEWERS"] = true,

	["BATTLEGROUND_SOTA"] = true,
	["NOT_BATTLEGROUND_SOTA"] = true,

	["BATTLEGROUND_TWINPEAKS"] = true,
	["NOT_BATTLEGROUND_TWINPEAKS"] = true,

	["BATTLEGROUND_WG"] = true,
	["NOT_BATTLEGROUND_WG"] = true,

	["BATTLEGROUND_WSG"] = true,
	["NOT_BATTLEGROUND_WSG"] = true,

	["CASTER_FORM"] = true,
	["NOT_CASTER_FORM"] = true,

	["BEAR_FORM"] = true,
	["NOT_BEAR_FORM"] = true,

	["CAT_FORM"] = true,
	["NOT_CAT_FORM"] = true,

	["TRAVEL_FORM"] = true,
	["NOT_TRAVEL_FORM"] = true,

	["SWIFT_FLIGHT_FORM"] = true,
	["NOT_SWIFT_FLIGHT_FORM"] = true,

	["MOONKIN_FORM"] = true,
	["NOT_MOONKIN_FORM"] = true,

	["TREE_FORM"] = true,
	["NOT_TREE_FORM"] = true,

	["STEALTH"] = true,
	["NOT_STEALTH"] = true,

	["MOUNTED"] = true,
	["NOT_MOUNTED"] = true,

	["SPIRIT_REGEN"] = true,
	["NOT_SPIRIT_REGEN"] = true,

	["GHOST_WOLF"] = true,
	["NOT_GHOST_WOLF"] = true,

	["FEIGN_DEATH"] = true,
	["NOT_FEIGN_DEATH"] = true,

	["SWIMMING"] = true,
	["NOT_SWIMMING"] = true,

	["CITY"] = true,
	["NOT_CITY"] = true,

	["EVOCATE"] = true,
	["NOT_EVOCATE"] = true,

	["DINING"] = true,
	["NOT_DINING"] = true,
}

Outfitter.BANKED_FONT_COLOR = CreateColor(0.25, 0.2, 1.0)
Outfitter.BANKED_FONT_COLOR_CODE = "|cff4033ff"
Outfitter.OUTFIT_MESSAGE_COLOR = CreateColor(0.2, 0.75, 0.3)

Outfitter.IsWoW4 = true
Outfitter.cItemLinkFormat = "|Hitem:(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+):(-?%d+)|h%[([^%]]*)%]|h"

-- Phantom items are items which appear to be in a slot but which are actually the by-product of some other item being equipped in a different slot. This is being used in Patch 7 (Legion) for the artifact weapons which occupy both weapon slots.
-- /dump {Outfitter:GetInventoryItemInfo("MainHandSlot").Code,Outfitter:GetInventoryItemInfo("SecondaryHandSlot").Code}
Outfitter.PhantomItemIDs = {
	[133948] = true, -- Monk, Fists of the Heavaens
	[128293] = true, -- DK, Blades of the Fallen Prince
	[127830] = true, -- DH, Twinblades of the Deceiver
	[128831] = true, -- DH, Aldrachi Warblades
	[128859] = true, -- Druid, Fangs of Ashmane
	[128822] = true, -- Druid, Claws of Ursoc
	[133959] = true, -- Mage, Heart of the Phoenix
	[128867] = true, -- Paladin, Oathseeker
	[133958] = true, -- Priest, Secrets of the Void
	[128869] = true, -- Rogue, The Kingslayers
	[134552] = true, -- Rogue, Fortune
	[128479] = true, -- Rogue, Akaari's Will
	[128936] = true, -- Shaman, The Highkeeper's Ward
	[128873] = true, -- Shaman, Fury of the Stonemother
	[128934] = true, -- Shaman, Shield of the Sea Queen
	[137246] = true, -- Warlock, Spine of Thal'kiel
	[134553] = true, -- Warrior, Helya's Wrath
	[128288] = true, -- Warrior, Scaleshard
}

Outfitter.cUniqueGemItemIDs =
{
	[33140] = 33140, -- Blood of Amber, ItemCode 33140, +13 Spell Critical Strike Rating
	[33139] = 33139, -- Brilliant Bladestone, ItemCode 33139, +12 Intellect
	[34256] = 34256, -- Charmed Amani Jewel, ItemCode 34256, +15 Stamina
	[33131] = 33131, -- Crimson Sun, ItemCode 33131, +24 Attack Power
	[33132] = 33132, -- Delicate Fire Ruby, ItemCode 33132, +12 Agility
	[33133] = 33133, -- Don Julio's Heart, ItemCode 33133
	[33144] = 33144, -- Facet of Eternity, ItemCode 33144, +12 Defense Rating
	[33135] = 33135, -- Falling Star, ItemCode 33135, +18 Stamina

	[33141] = 33141, -- Great Bladestone, ItemCode 33141, +12 Spell Hit Rating
	[33134] = 33134, -- Kailee's Rose, ItemCode 33134, +26 Healing and +9 Spell Damage
	[33138] = 33138, -- Mystic Bladestone, ItemCode 33138, +12 Resilience Rating
	[32735] = 32735, -- Radiant Spencerite, ItemCode 32735, +20 Attack Power
	[33142] = 33142, -- Rigid Bladestone, ItemCode 33142, +12 Hit Rating
	[33137] = 33137, -- Sparkling Falling Star, ItemCode 33137, +12 Spirit

	[33143] = 3220, -- Stone of Blades, ItemCode 33143, +12 Critical Strike Rating
	[27679] = 2891, -- Sublime Mystic Dawnstone, ItemCode 27679, +10 Resilience Rating
	[27786] = 2899, -- Barbed Deep Peridot, ItemCode 27786 & 27809, +3 Stamina, +4 Critical Strike Rating
	[27809] = 2899, -- Barbed Deep Peridot, ItemCode 27786 & 27809, +3 Stamina, +4 Critical Strike Rating
	[30598] = 3103, -- Don Amancio's Heart, ItemCode 30598, +8 Strength (numerous enchants of +8 str)
	[30571] = 3065, -- Don Rodrigo's Heart, ItemCode 30571, +8 Strength
	[34831] = 3268, -- Eye of the Sea, ItemCode 34831, +15 Stamina
	[28360] = 2943, -- Mighty Blood Garnet, ItemCode 28360, +14 Attack Power
	[28361] = 2944, -- Mighty Blood Garnet, ItemCode 28361, +14 Attack Power
	[27785] = 2898, -- Notched Deep Peridot, ItemCode 27785, +3 Stamina, +4 Spell Critical Strike Rating
	[27820] = 2923, -- Notched Deep Peridot, ItemCode 27820, +3 Stamina, +4 Spell Critical Strike Rating
	[27777] = 2896, -- Stark Blood Garnet, ItemCode 27777, +8 Spell Damage
	[27812] = 2924, -- Stark Blood Garnet, ItemCode 27812, +8 Spell Damage
	[28557] = 2970, -- Swift Starfire Diamond, ItemCode 28557, +12 Spell Damage and Minor Run Speed Increase
	[28556] = 2969, -- Swift Windfire Diamond, ItemCode 28556, +20 Attack Power and Minor Run Speed Increase

	[32634] = 3156, -- Unstable Amethyst, ItemCode 32634, +8 Attack Power and +6 Stamina
	[32635] = 3157, -- Unstable Peridot, ItemCode 32635,
	[32636] = 3158, -- Unstable Sapphire, ItemCode 32636
	[32637] = 3159, -- Unstable Citrine, ItemCode 32637, +8 Attack Power
	[32638] = 3160, -- Unstable Topaz, ItemCode 32638
	[32639] = 3161, -- Unstable Talasite, ItemCode 32639

	-- WotLK unique-equipped

	[42701] = 3749, -- Enchanted Pearl, +4 all stats, ItemCode 42701
	[42702] = 3750, -- Enchanted Tear, +6 all stats, ItemCode 42702
	[44066] = 3792, -- Kharmaa's Grace, +20 resilience, ItemCode 44066

	-- WotLK JC Prismatics (unique-equipped x 3)

	[36766] = "PRISM3", -- Bright Dragon's Eye, 54att, ItemCode 36766
	[36767] = "PRISM3", -- Solid Dragon's Eye, 41stam, ItemCode 36767
	[42142] = "PRISM3", -- Bold Dragon's Eye, 27str, ItemCode 42142
	[42143] = "PRISM3", -- Delicate Dragon's Eye, 27agi, ItemCode 42143
	[42144] = "PRISM3", -- Runed Dragon's Eye, 32spell, ItemCode 42144
	[42145] = "PRISM3", -- Sparkling Dragon's Eye, 27spi, ItemCode 42145
	[42146] = "PRISM3", -- Lustrous Dragon's Eye, 11mp5, ItemCode 42146
	[42148] = "PRISM3", -- Brilliant Dragon's Eye, 27int, ItemCode 42148
	[42149] = "PRISM3", -- Smooth Dragon's Eye, 27crit, ItemCode 42149
	[42150] = "PRISM3", -- Quick Dragon's Eye, 27haste, ItemCode 42150
	[42151] = "PRISM3", -- Subtle Dragon's Eye, 27dodge, ItemCode 42151
	[42152] = "PRISM3", -- Flashing Dragon's Eye, 27parry, ItemCode 42152
	[42153] = "PRISM3", -- Fractured Dragon's Eye, 27armorpen, ItemCode 42153
	[42154] = "PRISM3", -- Precise Dragon's Eye, 27exp, ItemCode 42154
	[42155] = "PRISM3", -- Stormy Dragon's Eye, 32spellpen, ItemCode 42155
	[42156] = "PRISM3", -- Rigid Dragon's Eye, 27hit, ItemCode 42156
	[42157] = "PRISM3", -- Thick Dragon's Eye, 27def, ItemCode 42157
	[42158] = "PRISM3", -- Mystic Dragon's Eye, 27resil, ItemCode 42158

	-- Patch 3.2

	[49110] = 49110, -- Nightmare Tear

	-- Cataclysm JC

	[52255] = "PRISM3", -- Bold Chimera's Eye
	[52257] = "PRISM3", -- Brilliant Chimera's Eye
	[52258] = "PRISM3", -- Delicate Chimera's Eye
	[52259] = "PRISM3", -- Flashing Chimera's Eye
	[52269] = "PRISM3", -- Fractured Chimera's Eye
	[52267] = "PRISM3", -- Mystic Chimera's Eye
	[52260] = "PRISM3", -- Precise Chimera's Eye
	[52268] = "PRISM3", -- Quick Chimera's Eye
	[52264] = "PRISM3", -- Rigid Chimera's Eye
	[52266] = "PRISM3", -- Smooth Chimera's Eye
	[52261] = "PRISM3", -- Solid Chimera's Eye
	[52262] = "PRISM3", -- Sparkling Chimera's Eye
	[52263] = "PRISM3", -- Stormy Chimera's Eye
	[52265] = "PRISM3", -- Subtle Chimera's Eye

	-- MoP JC

	[83141] = "FACET2", -- Bold Serpent's Eye
	[83142] = "FACET2", -- Quick Serpent's Eye
	[83143] = "FACET2", -- Fractured Serpent's Eye
	[83144] = "FACET2", -- Rigid Serpent's Eye
	[83145] = "FACET2", -- Subtle Serpent's Eye
	[83146] = "FACET2", -- Smooth Serpent's Eye
	[83147] = "FACET2", -- Precise Serpent's Eye
	[83148] = "FACET2", -- Solid Serpent's Eye
	[83149] = "FACET2", -- Sparkling Serpent's Eye
	[83150] = "FACET2", -- Brilliant Serpent's Eye
	[83151] = "FACET2", -- Delicate Serpent's Eye
	[83152] = "FACET2", -- Flashing Serpent's Eye

	-- MoP Cogwheel
	[77540] = 77540, -- Subtle Tinker's Gear
	[77541] = 77541, -- Smooth Tinker's Gear
	[77542] = 77542, -- Quick Tinker's Gear
	[77543] = 77543, -- Precise Tinker's Gear
	[77544] = 77544, -- Flashing Tinker's Gear
	[77545] = 77545, -- Rigid Tinker's Gear
	[77546] = 77546, -- Sparkling Tinker's Gear
	[77547] = 77547, -- Fractured Tinker's Gear

	-- MoP JC
	[93404] = "FACET2", -- Resplendent
	[93405] = "FACET2", -- Lucent
	[93406] = "FACET2", -- Willful
	[93408] = "FACET2", -- Tense
	[93409] = "FACET2", -- Assassin's
	[93410] = "FACET2", -- Mysterious
}

StaticPopupDialogs.OUTFITTER_CANT_RELOADUI =
{
	text = Outfitter.cCantReloadUI,
	button1 = OKAY,
	OnAccept = function() end,
	OnCancel = function() end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
}

StaticPopupDialogs.OUTFITTER_SERVER_FULL =
{
	text = Outfitter.cTooManyServerOutfits,
	button1 = OKAY,
	OnAccept = function() end,
	OnCancel = function() end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
}

StaticPopupDialogs.OUTFITTER_CANT_SET_ICON =
{
	text = Outfitter.cCantSetIcon,
	button1 = Outfitter.cChangeIcon,
	button2 = CANCEL,
	OnAccept = function() end,
	OnCancel = function() end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
	showAlert = 1,
}

StaticPopupDialogs.OUTFITTER_CONFIRM_DELETE =
{
	text = Outfitter.cConfirmDeleteMsg,
	button1 = DELETE,
	button2 = CANCEL,
	OnAccept = function() Outfitter:DeleteSelectedOutfit() end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}

StaticPopupDialogs.OUTFITTER_CONFIRM_REBUILD =
{
	text = Outfitter.cConfirmRebuildMsg,
	button1 = Outfitter.cRebuild,
	button2 = CANCEL,
	OnAccept = function() Outfitter:RebuildOutfit(Outfitter.OutfitToRebuild) Outfitter.OutfitToRebuild = nil end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
}

StaticPopupDialogs.OUTFITTER_CONFIRM_SET_CURRENT =
{
	text = Outfitter.cConfirmSetCurrentMsg,
	button1 = Outfitter.cSetCurrent,
	button2 = CANCEL,
	OnAccept = function() Outfitter:SetOutfitToCurrent(Outfitter.OutfitToRebuild); Outfitter.OutfitToRebuild = nil end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
}

Outfitter.cCategoryDescriptions =
{
	Complete = Outfitter.cCompleteCategoryDescription,
	Accessory = Outfitter.cAccessoryCategoryDescription,
	OddsNEnds = Outfitter.cOddsNEndsCategoryDescription,
	BoEs = Outfitter.cBoEsCategoryDescription,
}

Outfitter.cSlotNames =
{
	-- First priority goes to armor

	"HeadSlot",
	"ShoulderSlot",
	"ChestSlot",
	"WristSlot",
	"HandsSlot",
	"WaistSlot",
	"LegsSlot",
	"FeetSlot",

	-- Second priority goes to weapons

	"MainHandSlot",
	"SecondaryHandSlot",
	"RangedSlot",

	-- Last priority goes to items with no durability

	"BackSlot",
	"NeckSlot",
	"ShirtSlot",
	"TabardSlot",
	"Finger0Slot",
	"Finger1Slot",
	"Trinket0Slot",
	"Trinket1Slot",
}

Outfitter.cSlotOrder = {}

for vIndex, vSlotName in ipairs(Outfitter.cSlotNames) do
	Outfitter.cSlotOrder[vSlotName] = vIndex
end

Outfitter.cSlotDisplayNames =
{
	HeadSlot = HEADSLOT,
	NeckSlot = NECKSLOT,
	ShoulderSlot = SHOULDERSLOT,
	BackSlot = BACKSLOT,
	ChestSlot = CHESTSLOT,
	ShirtSlot = SHIRTSLOT,
	TabardSlot = TABARDSLOT,
	WristSlot = WRISTSLOT,
	HandsSlot = HANDSSLOT,
	WaistSlot = WAISTSLOT,
	LegsSlot = LEGSSLOT,
	FeetSlot = FEETSLOT,
	Finger0Slot = Outfitter.cFinger0SlotName,
	Finger1Slot = Outfitter.cFinger1SlotName,
	Trinket0Slot = Outfitter.cTrinket0SlotName,
	Trinket1Slot = Outfitter.cTrinket1SlotName,
	MainHandSlot = MAINHANDSLOT,
	SecondaryHandSlot = SECONDARYHANDSLOT,
	RangedSlot = RANGEDSLOT,
}

Outfitter.cInvTypeToSlotName =
{
	INVTYPE_2HWEAPON = {SlotName = "MainHandSlot", MetaSlotName = "TwoHandSlot"},
	INVTYPE_BODY = {SlotName = "ShirtSlot"},
	INVTYPE_CHEST = {SlotName = "ChestSlot"},
	INVTYPE_CLOAK = {SlotName = "BackSlot"},
	INVTYPE_FEET = {SlotName = "FeetSlot"},
	INVTYPE_FINGER = {SlotName = "Finger0Slot"},
	INVTYPE_HAND = {SlotName = "HandsSlot"},
	INVTYPE_HEAD = {SlotName = "HeadSlot"},
	INVTYPE_HOLDABLE = {SlotName = "SecondaryHandSlot"},
	INVTYPE_LEGS = {SlotName = "LegsSlot"},
	INVTYPE_NECK = {SlotName = "NeckSlot"},
	INVTYPE_ROBE = {SlotName = "ChestSlot"},
	INVTYPE_SHIELD = {SlotName = "SecondaryHandSlot"},
	INVTYPE_SHOULDER = {SlotName = "ShoulderSlot"},
	INVTYPE_TABARD = {SlotName = "TabardSlot"},
	INVTYPE_TRINKET = {SlotName = "Trinket0Slot"},
	INVTYPE_WAIST = {SlotName = "WaistSlot"},
	INVTYPE_WEAPON = {SlotName = "MainHandSlot", MetaSlotName = "Weapon0Slot"},
	INVTYPE_WEAPONMAINHAND = {SlotName = "MainHandSlot"},
	INVTYPE_WEAPONOFFHAND = {SlotName = "SecondaryHandSlot"},
	INVTYPE_WRIST = {SlotName = "WristSlot"},
	INVTYPE_RANGED = {SlotName = "RangedSlot"},
	INVTYPE_RANGEDRIGHT = {SlotName = "RangedSlot"},
	INVTYPE_THROWN = {SlotName = "RangedSlot"},
	INVTYPE_RELIC = {SlotName = "RangedSlot"},

}

Outfitter.cHalfAlternateStatSlot =
{
	Trinket0Slot = "Trinket1Slot",
	Finger0Slot = "Finger1Slot",
	Weapon0Slot = "Weapon1Slot",
}

Outfitter.cFullAlternateStatSlot =
{
	Trinket0Slot = "Trinket1Slot",
	Trinket1Slot = "Trinket0Slot",
	Finger0Slot = "Finger1Slot",
	Finger1Slot = "Finger0Slot",
	Weapon0Slot = "Weapon1Slot",
	Weapon1Slot = "Weapon0Slot",
}

Outfitter.cCategoryOrder =
{
	"Complete",
	"Accessory"
}

Outfitter.cItemAliases =
{
	[18608] = 18609,	-- Benediction -> Anathema
	[18609] = 18608,	-- Anathema -> Benediction
	[17223] = 17074,	-- Thunderstrike -> Shadowstrike
	[17074] = 17223,	-- Shadowstrike -> Thunderstrike

	[46069] = 46106,	-- Alliance Lance -> Argent Lance
	[46070] = 46106,	-- Horde Lance -> Argent Lance
	[46106] = 46069,	-- Argent Lance -> Alliance Lance (will be replaced by Horde Lance at runtime)
}

Outfitter.cIgnoredUnusedItems =
{
	[2901] = "Mining Pick",
	[5956] = "Blacksmith hammer",
	[6219] = "Arclight Spanner",
	[7005] = "Skinning Knife",
	[7297] = "Morbent's Bane",
	[10696] = "Enchanted Azsharite Felbane Sword",
	[10697] = "Enchanted Azsharite Felbane Dagger",
	[10698] = "Enchanted Azsharite Felbane Staff",
	[20406] = "Twilight Cultist Mantle",
	[20407] = "Twilight Cultist Robe",
	[20408] = "Twilight Cultist Cowl",
	[136350] = "Brumdysla, Hammer of Vrorsk"
}

Outfitter.cSmartOutfits =
{
--	{Name = Outfitter.cFishingOutfit, StatID = "FISHING", ScriptID = "Fishing"},
--	{Name = Outfitter.cHerbalismOutfit, StatID = "HERBALISM", ScriptID = "Herbalism"},
--	{Name = Outfitter.cMiningOutfit, StatID = "MINING", ScriptID = "Mining"},
--	{Name = Outfitter.cSkinningOutfit, StatID = "SKINNING", ScriptID = "Skinning"},
}

Outfitter.cSpecialIDEvents =
{
	Bear = {Equip = "BEAR_FORM", Unequip = "NOT_BEAR_FORM"},
	Cat = {Equip = "CAT_FORM", Unequip = "NOT_CAT_FORM"},
	Travel = {Equip = "TRAVEL_FORM", Unequip = "NOT_TRAVEL_FORM"},
	Flight = {Equip = "SWIFT_FLIGHT_FORM", Unequip = "NOT_SWIFT_FLIGHT_FORM"},
	Moonkin = {Equip = "MOONKIN_FORM", Unequip = "NOT_MOONKIN_FORM"},
	Tree = {Equip = "TREE_FORM", Unequip = "NOT_TREE_FORM"},
	Prowl = {Equip = "STEALTH", Unequip = "NOT_STEALTH"},
	Caster = {Equip = "CASTER_FORM", Unequip = "NOT_CASTER_FORM"},

	Stealth = {Equip = "STEALTH", Unequip = "NOT_STEALTH"},

	GhostWolf = {Equip = "GHOST_WOLF", Unequip = "NOT_GHOST_WOLF"},

	Feigning = {Equip = "FEIGN_DEATH", Unequip = "NOT_FEIGN_DEATH"},
	Hawk = {Equip = "HAWK", Unequip = "NOT_HAWK"},

	Evocate = {Equip = "EVOCATE", Unequip = "NOT_EVOCATE"},

	Dining = {Equip = "DINING", Unequip = "NOT_DINING"},
	City = {Equip = "CITY", Unequip = "NOT_CITY"},
	Riding = {Equip = "MOUNTED", Unequip = "NOT_MOUNTED"},
	Swimming = {Equip = "SWIMMING", Unequip = "NOT_SWIMMING"},
	Spirit = {Equip = "SPIRIT_REGEN", Unequip = "NOT_SPIRIT_REGEN"},
	ArgentDawn = {Equip = "ARGENT_DAWN", Unequip = "NOT_ARGENT_DAWN"},

	Battleground = {Equip = "BATTLEGROUND", Unequip = "NOT_BATTLEGROUND"},
	AB = {Equip = "BATTLEGROUND_AB", Unequip = "NOT_BATTLEGROUND_AB"},
	AV = {Equip = "BATTLEGROUND_AV", Unequip = "NOT_BATTLEGROUND_AV"},
	WSG = {Equip = "BATTLEGROUND_WSG", Unequip = "NOT_BATTLEGROUND_WSG"},
	EotS = {Equip = "BATTLEGROUND_EOTS", Unequip = "NOT_BATTLEGROUND_EOTS"},
	SotA = {Equip = "BATTLEGROUND_SOTA", Unequip = "NOT_BATTLEGROUND_SOTA"},
	IoC = {Equip = "BATTLEGROUND_IOC", Unequip = "NOT_BATTLEGROUND_IOC"},
	Wintergrasp = {Equip = "BATTLEGROUND_WG", Unequip = "NOT_BATTLEGROUND_WG"},
	Sewers = {Equip = "BATTLEGROUND_SEWERS", Unequip = "NOT_BATTLEGROUND_SEWERS"},
	Gilneas = {Equip = "BATTLEGROUND_GILNEAS", Unequip = "NOT_BATTLEGROUND_GILNEAS"},
	TwinPeaks = {Equip = "BATTLEGROUND_TWINPEAKS", Unequip = "NOT_BATTLEGROUND_TWINPEAKS"},
	RingOfValor = {Equip = "BATTLEGROUND_ROV", Unequip = "NOT_BATTLEGROUND_ROV"},
	Arena = {Equip = "BATTLEGROUND_ARENA", Unequip = "NOT_BATTLEGROUND_ARENA"},
	BladesEdgeArena = {Equip = "BATTLEGROUND_BLADESEDGE", Unequip = "NOT_BATTLEGROUND_BLADESEDGE"},
	NagrandArena = {Equip = "BATTLEGROUND_NAGRAND", Unequip = "NOT_BATTLEGROUND_NAGRAND"},
	LordaeronArena = {Equip = "BATTLEGROUND_LORDAERON", Unequip = "NOT_BATTLEGROUND_LORDAERON"},
}

Outfitter.cClassSpecialOutfits =
{
	WARRIOR =
	{
	},

	DRUID =
	{
		{Name = Outfitter.cDruidCasterForm, ScriptID = "Caster"},
		{Name = Outfitter.cDruidBearForm, ScriptID = "Bear"},
		{Name = Outfitter.cDruidCatForm, ScriptID = "Cat"},
		{Name = Outfitter.cDruidTravelForm, ScriptID = "Travel"},
		{Name = Outfitter.cDruidSwiftFlightForm, ScriptID = "Flight"},
		{Name = Outfitter.cDruidMoonkinForm, ScriptID = "Moonkin"},
		{Name = Outfitter.cDruidTreeOfLifeForm, ScriptID = "Tree"},
		{Name = Outfitter.cDruidProwl, ScriptID = "Prowl"},
	},

	PRIEST =
	{
	},

	ROGUE =
	{
		{Name = Outfitter.cRogueStealth, ScriptID = "Stealth"},
	},

	SHAMAN =
	{
		{Name = Outfitter.cShamanGhostWolf, ScriptID = "GhostWolf"},
	},

	HUNTER =
	{
	},

	MAGE =
	{
	},

	DEATHKNIGHT =
	{
	},

	MONK =
	{
	},
	DEMONHUNTER =
	{
	},
}

Outfitter.cSpellIDToSpecialID =
{
	[13165] = "Hawk",
	[14318] = "Hawk",
	[14319] = "Hawk",
	[14320] = "Hawk",
	[14321] = "Hawk",
	[14322] = "Hawk",
	[25296] = "Hawk",
	[27044] = "Hawk",

	[61846] = "Hawk",
	[61847] = "Hawk",

	[12051] = "Evocate",
	[2645] = "GhostWolf",
	[5384] = "Feigning",
	[58984] = "Prowl",
}

Outfitter.cAuraIconSpecialID =
{
	[134062] = "Dining",
	[132805] = "Dining",
}

-- Note that zone special outfits will be worn in the order
-- the are listed here, with later outfits being worn over
-- earlier outfits (when they're being applied at the same time)
-- This allows BG-specific outfits to take priority over the generic
-- BG outfit

Outfitter.cZoneSpecialIDs =
{
	"ArgentDawn",

	"City",
	"Battleground",
	"Arena",

	"AV",
	"AB",
	"WSG",
	"EotS",
	"SotA",
	"IoC",

	"BladesEdgeArena",
	"NagrandArena",
	"LordaeronArena",
}

Outfitter.cZoneSpecialIDMap =
{
--[[
	[GetMapNameByID(22)] = {"ArgentDawn"}, -- Western Plaguelands
	[GetMapNameByID(23)] = {"ArgentDawn"}, -- Eastern Plaguelands
	[GetMapNameByID(765)] = {"ArgentDawn"}, -- Stratholme
	[GetMapNameByID(763)] = {"ArgentDawn"}, -- Scholomance
	[GetMapNameByID(535)] = {"Naxx"}, -- Naxxramas
	[GetMapNameByID(401)] = {"Battleground", "AV"}, -- Alterac Valley
	[GetMapNameByID(461)] = {"Battleground", "AB"}, -- Arathi Basin
	[GetMapNameByID(443)] = {"Battleground", "WSG"}, -- Warsong Gulch
	[Outfitter.LSZ["Silverwing Hold"] ] = {"Battleground", "WSG"}, -- Silverwing Hold
	[Outfitter.LSZ["Warsong Lumber Mill"] ] = {"Battleground", "WSG"}, -- Warsong Lumber Mill
	[GetMapNameByID(482)] = {"Battleground", "EotS"}, -- Eye of the Storm
	[GetMapNameByID(512)] = {"Battleground", "SotA"}, -- Strand of the Ancients
	[GetMapNameByID(540)] = {"Battleground", "IoC"}, -- Isle of Conquest
	[GetMapNameByID(501)] = {"Battleground", "Wintergrasp"}, -- Wintergrasp
	[GetMapNameByID(736)] = {"Battleground", "Gilneas"}, -- Battle for Gilneas
	[GetMapNameByID(626)] = {"Battleground", "TwinPeaks"}, -- Twin Peaks
	[Outfitter.LSZ["Wildhammer Stronghold"] ] = {"Battleground", "TwinPeaks"}, -- Wildhammer Stronghold
	[Outfitter.LSZ["Dragonmaw Stronghold"] ] = {"Battleground", "TwinPeaks"}, -- Dragonmaw Stronghold

	-- Arenas
--	[GetMapNameByID(Dalaran Sewers)] = {"Battleground", "Arena", "Sewers"}, -- Dalaran Sewers
--	[GetMapNameByID(The Ring of Valor)] = {"Battleground", "Arena", "RingOfValor"}, -- The Ring of Valor
--	[GetMapNameByID(Blade's Edge Arena)] = {"Battleground", "BladesEdgeArena", "Arena"}, -- Blade's Edge Arena
--	[GetMapNameByID(Nagrand Arena)] = {"Battleground", "NagrandArena", "Arena"}, -- Nagrand Arena
--	[GetMapNameByID(Ruins of Lordaeron)] = {"Battleground", "LordaeronArena", "Arena"}, -- Ruins of Lordaeron

	[GetMapNameByID(341)] = {"City"}, -- Ironforge
	[Outfitter.LSZ["City of Ironforge"] ] = {"City"}, -- City of Ironforge
	[Outfitter.LSZ["Miwana's Longhouse"] ] = {"City"}, -- Miwana's Longhouse
	[GetMapNameByID(381)] = {"City"}, -- Darnassus
--	[GetMapNameByID(Stormwind)] = {"City"}, -- Stormwind
	[GetMapNameByID(301)] = {"City"}, -- Stormwind City
	[GetMapNameByID(321)] = {"City"}, -- Orgrimmar
	[GetMapNameByID(362)] = {"City"}, -- Thunder Bluff
	[GetMapNameByID(382)] = {"City"}, -- Undercity
	[GetMapNameByID(480)] = {"City"}, -- Silvermoon City
	[GetMapNameByID(471)] = {"City"}, -- The Exodar
	[GetMapNameByID(481)] = {"City"}, -- Shattrath City
	[GetMapNameByID(504)] = {"City"}, -- Dalaran
	[GetMapNameByID(903)] = {"City"}, -- Shrine of Two Moons
	[GetMapNameByID(905)] = {"City"}, -- Shrine of Seven Stars
]]
}

-- As of patch 3.3 automated combat swaps aren't allowed.  I'm
-- leaving the code in but emptying the slot list in
-- case an acceptable workaround is discovered which would
-- make it useful again.

Outfitter.cCombatEquipmentSlots =
{
--[[
	MainHandSlot = true,
	SecondaryHandSlot = true,
]]
}

Outfitter.InventoryCache = nil

Outfitter.cMaxDisplayedItems = 14

Outfitter.cPanelFrames =
{
	"OutfitterMainFrame",
	"OutfitterOptionsFrame",
	"OutfitterAboutFrame",
}

Outfitter.cShapeshiftIDInfo = {
	-- Druid
	[5487] = {ID = "Bear", MaybeInCombat = true},
	[9634] = {ID = "Bear", MaybeInCombat = true},
	[768] = {ID = "Cat"},
	[783] = {ID = "Travel"},
	[24858] = {ID = "Moonkin"},
	[40120] = {ID = "Flight"},
	CasterForm = {ID = "Caster"}, -- this is a psuedo-form which is active when no other druid form is

	-- Rogue
	[1784] = {ID = "Stealth"},
	[1785] = {ID = "Stealth"},
	[1786] = {ID = "Stealth"},
	[1787] = {ID = "Stealth"}
}

function Outfitter:ToggleOutfitterFrame()
	if self:IsOpen() then
		OutfitterFrame:Hide()
	else
		OutfitterFrame:Show()
	end
end

function Outfitter:IsOpen()
	return OutfitterFrame:IsVisible()
end

function Outfitter:OnLoad()
	for vEventID, _ in pairs(self.cInitializationEvents) do
		self.EventLib:RegisterEvent(vEventID, self.InitializationCheck, self)
	end
end

function Outfitter:OnShow()
	self.SetFrameLevel(OutfitterFrame, PaperDollFrame:GetFrameLevel() - 1)

	self:ShowPanel(1) -- Always switch to the main view when showing the window
end

function Outfitter:OnHide()
	self:ClearSelection()

	if self.QuickSlots and self.QuickSlots.Close then
		self.QuickSlots:Close()
	end

	if self.NameOutfitDialog and self.NameOutfitDialog:IsShown() then
		self.NameOutfitDialog:Cancel()
	end

	if self.RebuildOutfitDialog and self.RebuildOutfitDialog:IsShown() then
		self.RebuildOutfitDialog:Cancel()
	end

	OutfitterFrame:Hide()  -- This seems redundant, but the OnHide handler gets called
	                       -- in response to the parent being hidden (the character window)
	                       -- so calling Hide() on the frame here ensures that when the
	                       -- character window is hidden then Outfitter won't be displayed
	                       -- next time it's opened
end

function Outfitter:SchedulePlayerEnteringWorld()
	self.SchedulerLib:RescheduleTask(0.05, self.PlayerEnteringWorld, self)
end

function Outfitter:PlayerEnteringWorld()
	self.IsCasting = false
	self.IsChanneling = false

	self:BeginEquipmentUpdate()

	self:FlushInventoryCache()

	self:RegenEnabled()
	self:UpdateAuraStates()

	self:ScheduleUpdateZone()

	self:ResumeLoadScreenEvents()
	self:ScheduleSynch() -- Always sync on entering world

	self:SynchronizeEM()

	self:EndEquipmentUpdate()
end

function Outfitter:PlayerLeavingWorld()
	-- To improve load screen performance, suspend events which are
	-- fired repeatedly and rapidly during zoning

	self.Suspended = true

	self.EventLib:UnregisterEvent("BAG_UPDATE", self.BagUpdate, self)
	self.EventLib:UnregisterEvent("UNIT_INVENTORY_CHANGED", self.UnitInventoryChanged, self)
	self.EventLib:UnregisterEvent("UNIT_AURA", self.UnitAuraChanged, self)
	self.EventLib:UnregisterEvent("PLAYERBANKSLOTS_CHANGED", self.BankSlotsChanged, self)
end

function Outfitter:ResumeLoadScreenEvents()
	if self.Suspended then
		-- To improve load screen performance, suspend events which are
		-- fired repeatedly and rapidly during zoning

		self.Suspended = false

		self.EventLib:RegisterEvent("BAG_UPDATE", self.BagUpdate, self)
		self.EventLib:RegisterEvent("UNIT_INVENTORY_CHANGED", self.UnitInventoryChanged, self, true) -- Register as a blind event handler (no event id param)
		self.EventLib:RegisterEvent("UNIT_AURA", self.UnitAuraChanged, self)
		self.EventLib:RegisterEvent("PLAYERBANKSLOTS_CHANGED", self.BankSlotsChanged, self)
	end
end

function Outfitter:VariablesLoaded()
	self.Settings = gOutfitter_Settings
end

function Outfitter:BankSlotsChanged()
	self:ScheduleSynch()
end

function Outfitter:BagUpdate()
	self:ScheduleSynch()
end

Outfitter.OutfitEvents = {}

function Outfitter:RegisterOutfitEvent(pEvent, pFunction)
	local vHandlers = self.OutfitEvents[pEvent]

	if not vHandlers then
		vHandlers = {}
		self.OutfitEvents[pEvent] = vHandlers
	end

	table.insert(vHandlers, pFunction)
end

function Outfitter:UnregisterOutfitEvent(pEvent, pFunction)
	local vHandlers = self.OutfitEvents[pEvent]

	if not vHandlers then
		return
	end

	for vIndex, vFunction in ipairs(vHandlers) do
		if vFunction == pFunction then
			table.remove(vHandlers, vIndex)
			return
		end
	end
end

function Outfitter:DispatchOutfitEvent(pEvent, pParameter1, pParameter2)
	-- Don't send out events until we're initialized

	if not self.Initialized then
		return
	end

	-- Post a message

	local vHandlers = self.OutfitEvents[pEvent]

	if vHandlers then
		for _, vFunction in ipairs(vHandlers) do
			-- Call in protected mode so that if they fail it doesn't
			-- screw up Outfitter or other addons wishing to be notified

			local vSucceeded, vMessage = pcall(vFunction, pEvent, pParameter1, pParameter2)

			if vMessage then
				self:ErrorMessage("Error dispatching event "..pEvent)
				self:ErrorMessage(vMessage)
			end
		end
	end

	local vEventID

	if pEvent == "WEAR_OUTFIT" then
		vEventID = "OUTFIT_EQUIPPED"
	elseif pEvent == "UNWEAR_OUTFIT" then
		vEventID = "OUTFIT_UNEQUIPPED"
	end

	local vOutfits = self.OutfitScriptEvents[vEventID]

	if vOutfits then
		local vScriptContext = vOutfits[pParameter2]

		if vScriptContext then
			local vSucceeded, vMessage = pcall(vScriptContext.Function, vScriptContext, vEventID)

			if vMessage then
				self:ErrorMessage("Error dispatching outfit event %s", pEvent or "nil")
				self:ErrorMessage(vMessage)
			end
		end
	end

	-- Translate to the event ids for dispatch through the event system

	if pEvent == "WEAR_OUTFIT" then
		self.EventLib:DispatchEvent("WEAROUTFIT")
	elseif pEvent == "UNWEAR_OUTFIT" then
		self.EventLib:DispatchEvent("UNWEAROUTFIT")
	end

	-- Set the correct Helm and Cloak settings.
	self.OutfitStack:UpdateOutfitDisplay()

	--self.SchedulerLib:ScheduleUniqueTask(0.5, self.OutfitStack.UpdateOutfitDisplay, self.OutfitStack)
	self.SchedulerLib:ScheduleUniqueTask(0.1, self.UpdateCurrentOutfitIcon, self)
end

function Outfitter:UpdateCurrentOutfitIcon()
	local _, vOutfit = self:GetCurrentOutfitInfo()
	local vTexture = self.OutfitBar:GetOutfitTexture(vOutfit)

	if type(vTexture) == "number" then
		vTexture = 	self:ConvertTextureIDToPath(vTexture)
	end
	SetPortraitToTexture(OutfitterMinimapButton.CurrentOutfitTexture, vTexture)
end

function Outfitter:BankFrameOpened()
	self.BankFrameIsOpen = true
	self:BankSlotsChanged()
end

function Outfitter:BankFrameClosed()
	self.BankFrameIsOpen = false
	self:BankSlotsChanged()
end

function Outfitter:VoidStorageFrameOpened()
	self.VoidStorageIsOpen = true
end

function Outfitter:VoidStorageFrameClosed()
	self.VoidStorageIsOpen = false
end

function Outfitter:RegenDisabled(pEvent)
	self.InCombat = true

	if self.OutfitBar then
		self.OutfitBar:AdjustAlpha()
	end

	self.OutfitStack:UpdateOutfitDisplay()

	self:SuspendSecureActions()
end

function Outfitter:RegenEnabled(pEvent)
	self:BeginEquipmentUpdate()
	self.InCombat = false
	self:EndEquipmentUpdate()

	if self.OutfitBar then
		self.OutfitBar:AdjustAlpha()
	end

	self.OutfitStack:UpdateOutfitDisplay()

	self:ResumeSecureActions()
end

function Outfitter:SuspendSecureActions()
	for index = 1, self.cMaxDisplayedItems do
		local item = _G["OutfitterItem"..(index - 1)]
		item:suspendSecureActions()
	end
end

function Outfitter:ResumeSecureActions()
	for index = 1, self.cMaxDisplayedItems do
		local item = _G["OutfitterItem"..(index - 1)]
		item:resumeSecureActions()
	end
end

function Outfitter:PlayerDead(pEvent)
	self.IsDead = true
end

function Outfitter:PlayerAlive(pEvent)
	self:BeginEquipmentUpdate()
	self.IsDead = false
	self:UpdateAuraStates()
	self:EndEquipmentUpdate()
end

function Outfitter:UnitHealthOrManaChanged(pUnitID)
	if pUnitID ~= "player" then
		return
	end

	self:BeginEquipmentUpdate()

	-- Check to see if the player is full while dining

	if self.SpecialState.Dining
	and self:PlayerIsFull() then
		self:SetSpecialOutfitEnabled("Dining", false)
	end

	-- If the mana drops, see if there was a recent spellcast

	local vPlayerMana = UnitPower("player")

	if vPlayerMana and (not self.PreviousManaLevel or vPlayerMana < self.PreviousManaLevel) then
		local vTime = GetTime()

		if self.SpellcastSentTime and vTime < self.SpellcastSentTime + 10 then
			self.SpellcastSentTime = nil

			-- Five second rule has begun

			if self.SpiritRegenEnabled then
				self.SpiritRegenEnabled = false
				self:SetSpecialOutfitEnabled("Spirit", false)
			end

			self.SchedulerLib:RescheduleTask(5.0, self.SpiritRegenTimer, self)
		end
	end

	self.PreviousManaLevel = vPlayerMana

	--

	if self.SpellcastSentMana then
		self.SchedulerLib:RescheduleTask(0.01, self.CheckSpellcastManaDrop, self)
	end

	--

	self:EndEquipmentUpdate()
end

function Outfitter:UnitSpellcastDebug(pEventID, pUnitID, pSpellName)
	if pUnitID ~= "player" then
		return
	end

	self:DebugMessage("UnitSpellcastDebug: %s %s %s", pEventID, pUnitID, pSpellName)
end

function Outfitter:UnitSpellcastSent(pEventID, pUnitID, pSpellName)
	if pUnitID ~= "player" then
		return
	end

	self.SpellcastSentTime = GetTime()

	if not self.IsCasting then
		self.IsCasting = true
	end
end

function Outfitter:UnitSpellcastChannelStart(pEventID, pUnitID, pSpellName)
	if pUnitID ~= "player" then
		return
	end

	self.IsChanneling = true
end

function Outfitter:UnitSpellcastChannelStop(pEventID, pUnitID, pSpellName)
	if pUnitID ~= "player" then
		return
	end

	if not self.IsChanneling then
		return
	end

	self:BeginEquipmentUpdate()
	self.IsChanneling = false
	self.IsCasting = false
	self:SetUpdateDelay(GetTime(), 0.5) -- Need a short delay because the 'in combat' message doesn't come until after the spellcast is done
	self:EndEquipmentUpdate()
end

function Outfitter:UnitSpellcastStop(pEventID, pUnitID, pSpellName)
	if pUnitID ~= "player" then
		return
	end

	if not self.IsCasting then
		return
	end

	self:BeginEquipmentUpdate()
	self.IsCasting = false
	self:SetUpdateDelay(GetTime(), 0.5) -- Need a short delay because the 'in combat' message doesn't come until after the spellcast is done
	self:EndEquipmentUpdate()
end

function Outfitter:SpiritRegenTimer()
	self.SpiritRegenEnabled = true
	self:SetSpecialOutfitEnabled("Spirit", true)
end

function Outfitter:PlayerIsFull()
	if UnitHealth("player") < (UnitHealthMax("player") * 0.85) then
		return false
	end

	if UnitPowerType("player") ~= 0 then
		return true
	end

	return UnitPower("player") > (UnitPowerMax("player") * 0.85)
end

function Outfitter:UnitInventoryChanged(pUnitID)
	if pUnitID == "player" then
		self:ScheduleSynch()
	end
end

function Outfitter:InventoryChanged()
	self.DisplayIsDirty = true -- Update the list so the checkboxes reflect the current state

	local vNewItemsOutfit, vCurrentOutfit = self:GetNewItemsOutfit(self.CurrentOutfit)

	if vNewItemsOutfit then
		-- Save the new outfit

		self.CurrentOutfit = vCurrentOutfit

		-- Update the selected outfit or temporary outfit

		self:SubtractOutfit(vNewItemsOutfit, self.ExpectedOutfit)

		if next(vNewItemsOutfit.Items) then
			if self.SelectedOutfit then
				self:UpdateOutfitFromInventory(self.SelectedOutfit, vNewItemsOutfit)
			else
				self:UpdateTemporaryOutfit(vNewItemsOutfit)
			end
		end

		if self.QuickSlots and self.QuickSlots.InventoryChanged then
			self.QuickSlots:InventoryChanged(false)
		end
	end

	-- Fire off an event if the current outfit matches the expected outfit

	if not self.EquippedNeedsUpdate
	and self:OutfitItemsAreSame(self.CurrentOutfit, self.ExpectedOutfit, nil, true) then
		if self.Debug.TemporaryItems then
			self:DebugMessage("Swap complete")
		end

		self.EventLib:DispatchEvent("OUTFITTER_SWAP_COMPLETE")
	elseif self.Debug.TemporaryItems then
		self:DebugMessage("Swap not complete")
		self:DebugTable(self.CurrentOutfit, "CurrentOutfit", 2)
		self:DebugTable(self.ExpectedOutfit, "ExpectedOutfit", 2)
	end

	--

	self:Update(true)
end

function Outfitter:ExecuteCommand(pCommand)
	local vCommands =
	{
		wear = {useOutfit = true, func = self.WearOutfitNow},
		unwear = {useOutfit = true, func = self.RemoveOutfitNow},
		toggle = {useOutfit = true, func = self.ToggleOutfitNow},
		reset = {func = self.AskReset},

		deposit = {useOutfit = true, func = self.DepositOutfit},
		depositunique = {useOutfit = true, func = self.DepositOutfitUnique},
		depositothers = {useOutfit = true, func = self.DepositOtherOutfits},
		withdraw = {useOutfit = true, func = self.WithdrawOutfit},
		withdrawothers = {useOutfit = true, func = self.WithdrawOtherOutfits},

		update = {useOutfit = true, func = self.SetOutfitToCurrent},
		updatetitle = {func = function () Outfitter.OutfitStack:UpdateOutfitDisplay() end},

		summary = {func = self.OutfitSummary},
		rating = {func = self.RatingSummary},
		iteminfo = {func = self.ShowLinkInfo},
		itemstats = {func = self.ShowLinkStats},

		missing = {func = self.ShowMissingItems},

		sound = {func = self.SetSoundOption},
		help = {func = self.ShowCommandHelp},

		disable = {func = self.DisableAutoChanges},
		enable = {func = self.EnableAutoChanges},

		errors = {func = self.SetErrorsOption},
		daxdax = {func = self.SetErrorsOption},
	}

	-- Evaluate options if the command uses them

	local vCommand

	if string.find(pCommand, "|h") then -- Commands which use item links don't appear to parse correctly
		vCommand = pCommand
	else
		vCommand = SecureCmdOptionParse(pCommand)
	end

	if not vCommand then
		return
	end

	--

	local vStartIndex, vEndIndex, vCommand, vParameter = string.find(vCommand, "(%w+) ?(.*)")

	if not vCommand then
		self:ShowCommandHelp()
		return
	end

	vCommand = strlower(vCommand)

	local vCommandInfo = vCommands[vCommand]

	if not vCommandInfo then
		self:ShowCommandHelp()
		self:ErrorMessage("Unknown command %s", vCommand)
		return
	end

	local vOutfit = nil
	local vCategoryID = nil

	if vCommandInfo.useOutfit then
		if vParameter and vParameter:len() > 0 then
			vOutfit, vCategoryID = self:FindOutfitByName(vParameter)
		else
			vOutfit = self:GetCurrentCompleteOutfit()
			if not vOutfit then
				self:ErrorMessage("No Complete outfit is equipped")
				return
			end
			vCategoryID = vOutfit.CategoryID
		end

		if not vOutfit then
			self:ErrorMessage("Couldn't find outfit named "..vParameter)
			return
		end

		Outfitter.HasHWEvent = true
		vCommandInfo.func(self, vOutfit)
		Outfitter.HasHWEvent = false
	else
		vCommandInfo.func(self, vParameter)
	end
end

function Outfitter:DisableAutoChanges()
	self:SetAutoSwitch(false)
	self:NoteMessage(self.cAutoChangesDisabled)
end

function Outfitter:EnableAutoChanges()
	self:SetAutoSwitch(true)
	self:NoteMessage(self.cAutoChangesEnabled)
end

function Outfitter:ShowCommandHelp()
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter wear outfitName"..NORMAL_FONT_COLOR_CODE..": Wear an outfit")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter unwear outfitName"..NORMAL_FONT_COLOR_CODE..": Remove an outfit")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter toggle outfitName"..NORMAL_FONT_COLOR_CODE..": Wears or removes an outfit")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter reset"..NORMAL_FONT_COLOR_CODE..": Resets Outfitter, restoring default settings and outfits")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter reset bar"..NORMAL_FONT_COLOR_CODE..": Resets the position of the outfit bar")
	self:NoteMessage("")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter deposit outfitName"..NORMAL_FONT_COLOR_CODE..": Deposits an outfit to the bank")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter depositunique outfitName"..NORMAL_FONT_COLOR_CODE..": Deposits an outfit to the bank, except for items used by other outfits")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter depositothers outfitName"..NORMAL_FONT_COLOR_CODE..": Deposits all outfits except one to the bank")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter withdraw outfitName"..NORMAL_FONT_COLOR_CODE..": Withdraws an outfit from the bank")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter withdrawothers outfitName"..NORMAL_FONT_COLOR_CODE..": Withdraws all outfits except one from the bank")
	self:NoteMessage("")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter update [outfitName]"..NORMAL_FONT_COLOR_CODE..": Updates the outfit with currently equipped items, or the current Complete outfit if no outfit is specified")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter updatetitle"..NORMAL_FONT_COLOR_CODE..": Refreshes the current player title based on equipped items")
	self:NoteMessage("")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter sound [on|off]"..NORMAL_FONT_COLOR_CODE..": Turns equipment sound effects off during Outfitter's gear changes")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter disable"..NORMAL_FONT_COLOR_CODE..": Prevents all scripts from running")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter enable"..NORMAL_FONT_COLOR_CODE..": Allows enabled scripts to run")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter missing"..NORMAL_FONT_COLOR_CODE..": Generates a list of items which are in your outfits but can't be found")
	self:NoteMessage(HIGHLIGHT_FONT_COLOR_CODE.."/outfitter errors [on|off]"..NORMAL_FONT_COLOR_CODE..": Enables/disables missing item messages during gear changes")
end

function Outfitter:UnequipItemByName(pItemName)
	local vInventoryID = tonumber(pItemName)

	if pItemName ~= tostring(vInventoryID) then
		local vLowerItemName = pItemName:lower()

		-- Search the inventory for a matching item name

		vInventoryID = nil

		for _, vSlotID in ipairs(self.cSlotIDs) do
			local vItemCodes, vItemName = self:GetSlotIDLinkInfo(vSlotID)

			if vItemName and vItemName:lower() == vLowerItemName then
				vInventoryID = vSlotID
			end
		end

		if not vInventoryID then
			self:ErrorMessage("Couldn't find an item named "..pItemName)
		end
	end

	local vEmptyBagSlot = self:GetEmptyBagSlot(NUM_BAG_SLOTS, 1)

	if not vEmptyBagSlot then
		self:ErrorMessage("Couldn't unequip "..pItemName.." because all bags are full")
		return
	end

	PickupInventoryItem(vInventoryID)
	C_Container.PickupContainerItem(vEmptyBagSlot.BagIndex, vEmptyBagSlot.BagSlotIndex)
end

function Outfitter:AskRebuildOutfit(pOutfit)
	self.OutfitToRebuild = pOutfit

	StaticPopup_Show("OUTFITTER_CONFIRM_REBUILD", self.OutfitToRebuild.Name)
end

function Outfitter:AskSetCurrent(pOutfit)
	self.OutfitToRebuild = pOutfit

	StaticPopup_Show("OUTFITTER_CONFIRM_SET_CURRENT", self.OutfitToRebuild.Name)
end

function Outfitter:RebuildOutfit(pOutfit)
	if not pOutfit then
		return
	end

	local vStatConfig = pOutfit.StatConfig

	if not vStatConfig and pOutfit.StatID then
		vStatConfig = {{StatID = pOutfit.StatID}}
	end

	local vOutfit = self:GenerateSmartOutfit(
		pOutfit.Name,
		vStatConfig,
		self:GetInventoryCache(),
		false,
		function (pNewOutfit)
			local vNewItems = pNewOutfit:GetItems()

			if pOutfit:IsComplete() then
				local vOldItems = pOutfit:GetItems()

				for vItemSlot, vOldItem in pairs(vOldItems) do
					if not vNewItems[vItemSlot] then
						vNewItems[vItemSlot] = vOldItem
					end
				end
			end

			pOutfit:SetItems(vNewItems)
			self:OutfitSettingsChanged(pOutfit)
			self:WearOutfit(pOutfit)
			self:Update(true)
		end)

	if vOutfit then
		local vNewItems = vOutfit:GetItems()

		if pOutfit:IsComplete() then
			local vOldItems = pOutfit:GetItems()

			for vItemSlot, vOldItem in pairs(vOldItems) do
				if not vNewItems[vItemSlot] then
					vNewItems[vItemSlot] = vOldItem
				end
			end
		end
		pOutfit:SetItems(vNewItems)
		self:OutfitSettingsChanged(pOutfit)
		self:WearOutfit(pOutfit)
		self:Update(true)
	end
end

function Outfitter:SetOutfitToCurrent(pOutfit)
	if not pOutfit then
		return
	end

	pOutfit:SetToCurrentInventory()

	self:OutfitSettingsChanged(pOutfit)
	self:WearOutfit(pOutfit)

	self:Update(true)

	self:NoteMessage("Updated the outfit '"..pOutfit:GetName().."' to currently equipped items")
end

function Outfitter:AskDeleteOutfit(pOutfit)
	gOutfitter_OutfitToDelete = pOutfit
	StaticPopup_Show("OUTFITTER_CONFIRM_DELETE", gOutfitter_OutfitToDelete.Name)
end

function Outfitter:DeleteSelectedOutfit()
	if not gOutfitter_OutfitToDelete then
		return
	end

	self:DeleteOutfit(gOutfitter_OutfitToDelete)

	self:Update(true)
end

function Outfitter:TalentsChanged()
	self.CanDualWield2H = self.PlayerClass == "WARRIOR" and select(5, GetTalentInfo(2, 24)) > 0
end

function Outfitter:SetScript(pOutfit, pScript)
	self:DeactivateScript(pOutfit)

	if pScript == "" then
		pScript = nil
	end

	pOutfit.Script = pScript
	pOutfit.ScriptID = nil

	self:OutfitSettingsChanged(self.SelectedOutfit)
	self:ActivateScript(pOutfit)
end

function Outfitter:SetScriptID(pOutfit, pScriptID)
	self:DeactivateScript(pOutfit)

	if pScriptID == "" then
		pScriptID = nil
	end

	pOutfit.Script = nil
	pOutfit.ScriptID = pScriptID

	self:OutfitSettingsChanged(self.SelectedOutfit)
	self:ActivateScript(pOutfit)
end

function Outfitter:GetScript(pOutfit)
	if pOutfit.ScriptID then
		local vPresetScript = self:GetPresetScriptByID(pOutfit.ScriptID)

		if vPresetScript then
			local vScript = vPresetScript.Script:gsub("([\r\t])", {["\r"] = "", ["\t"] = "    "})

			return vScript, pOutfit.ScriptID
		end
	else
		return pOutfit.Script
	end
end

function Outfitter:ShowPanel(pPanelIndex)
	self:CancelDialogs() -- Force any dialogs to close if they're open

	if self.CurrentPanel > 0
	and self.CurrentPanel ~= pPanelIndex then
		self:HidePanel(self.CurrentPanel)
	end

	-- NOTE: Don't check for redundant calls since this function
	-- will be called to reset the field values as well as to
	-- actually show the panel when it's hidden

	self.CurrentPanel = pPanelIndex

	local vPanelFrame = _G[self.cPanelFrames[pPanelIndex]]

	vPanelFrame:Show()

	PanelTemplates_SetTab(OutfitterFrame, pPanelIndex)

	-- Update the control values

	if pPanelIndex == 1 then
		-- Main panel

	elseif pPanelIndex == 2 then
		-- Options panel

	elseif pPanelIndex == 3 then
		-- About panel

		if not self.AboutView then
			self.AboutView = self:New(self._AboutView)
		end
	else
		self:ErrorMessage("Unknown index (%d) in ShowPanel()", pPanelIndex)
	end

	self:Update(false)
end

function Outfitter:HidePanel(pPanelIndex)
	if self.CurrentPanel ~= pPanelIndex then
		return
	end

	_G[self.cPanelFrames[pPanelIndex]]:Hide()
	self.CurrentPanel = 0
end

function Outfitter:CancelDialogs()
end

function Outfitter:AddOutfitMenu(menu, outfit)
	-- This shouldn't happen
	if not outfit then
		self:ErrorMessage("Outfit is nil for menu")
		return
	end

	menu:AddCategoryTitle(outfit:GetName())

	-- General
	menu:AddFunction(PET_RENAME, function (menu)
		self:PerformAction("RENAME", outfit)
	end)
	menu:AddSelect(self.cKeyBinding, {
		self.cNone,
		_G["BINDING_NAME_OUTFITTER_OUTFIT1"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT2"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT3"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT4"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT5"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT6"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT7"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT8"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT9"],
		_G["BINDING_NAME_OUTFITTER_OUTFIT10"]
	}, function ()
		if outfit.BindingIndex then
			return outfit.BindingIndex + 1
		else
			return 1
		end
	end, function (menu, value)
		if value == 1 then
			self:SetOutfitBindingIndex(outfit, nil)
		else
			self:SetOutfitBindingIndex(outfit, value - 1)
		end
	end)

	-- Get the titles
	local titles = self:GetSortedTitles()

	-- Build the menu
	local maxTitlesPerMenu = 30
	menu:AddChildMenu(self.cPlayerTitle, function (submenu)
		local startIndex = 1

		-- Add the None item
		submenu:AddToggle(self.cNone,
			function ()
				return outfit.ShowTitleID == nil
			end, function (menu, value)
				outfit.ShowTitleID = nil

				Outfitter.HasHWEvent = true
				self.OutfitStack:UpdateOutfitDisplay()
				Outfitter.HasHWEvent = false
			end)

		-- Add a select menu for groups of titles
		while startIndex <= #titles do
			local endIndex = startIndex + maxTitlesPerMenu - 1
			if endIndex > #titles then
				endIndex = #titles
			end

			self:AddTitleSelectMenu(submenu, tostring(startIndex).." - "..tostring(endIndex), outfit, titles, startIndex, maxTitlesPerMenu)

			startIndex = endIndex + 1
		end
	end)

	-- Outfit Display
	menu:AddChildMenu(self.cOutfitDisplay, function (submenu)

		-- Helm
		submenu:AddCategoryTitle(self.cHelm)
		submenu:AddToggle(self.cDontChange,
			function ()
				return outfit.ShowHelm == nil
			end,
			function ()
				self:PerformAction("IGNOREHELM", outfit)
			end)
		submenu:AddToggle(self.cShow,
			function ()
				return outfit.ShowHelm == true
			end,
			function ()
				self:PerformAction("SHOWHELM", outfit)
			end)
		submenu:AddToggle(self.cHide,
			function ()
				return outfit.ShowHelm == false
			end,
			function ()
				self:PerformAction("HIDEHELM", outfit)
			end)

		-- Cloak
		submenu:AddCategoryTitle(self.cCloak)
		submenu:AddToggle(self.cDontChange,
			function ()
				return outfit.ShowCloak == nil
			end,
			function ()
				self:PerformAction("IGNORECLOAK", outfit)
			end)
		submenu:AddToggle(self.cShow,
			function ()
				return outfit.ShowCloak == true
			end,
			function ()
				self:PerformAction("SHOWCLOAK", outfit)
			end)
		submenu:AddToggle(self.cHide,
			function ()
				return outfit.ShowCloak == false
			end,
			function ()
				self:PerformAction("HIDECLOAK", outfit)
			end)

	end)

	menu:AddChildMenu(self.cBankCategoryTitle, function (submenu)
		submenu:AddFunction(self.cDepositToBank, function () self:PerformAction("DEPOSIT", outfit) end, not self.BankFrameIsOpen)
		submenu:AddFunction(self.cDepositUniqueToBank, function () self:PerformAction("DEPOSITUNIQUE", outfit) end, not self.BankFrameIsOpen)
		submenu:AddFunction(self.cWithdrawFromBank, function () self:PerformAction("WITHDRAW", outfit) end, not self.BankFrameIsOpen)
		submenu:AddDivider()
		submenu:AddFunction(self.cDepositOthersToBank, function () self:PerformAction("DEPOSITOTHERS", outfit) end, not self.BankFrameIsOpen)
		submenu:AddFunction(self.cWithdrawOthersFromBank, function () self:PerformAction("WITHDRAWOTHERS", outfit) end, not self.BankFrameIsOpen)
	end)
	if outfit.CategoryID ~= "Complete" then
		menu:AddToggle(self.cUnequipOthers, function ()
			return outfit.UnequipOthers
		end, function (menu, value)
			outfit.UnequipOthers = value or nil
			self:OutfitSettingsChanged(outfit)
		end)
    menu:AddToggle(self.cPreventUnequip, function()
      return outfit.PreventUnequip
    end, function (menu, value)
      outfit.PreventUnequip = value or nil
      self:OutfitSettingsChanged(outfit)
    end)
	end
	menu:AddToggle(self.cIgnoreComparisons, function ()
		return outfit.IgnoreComparisons
	end, function (menu, value)
		outfit.IgnoreComparisons = value or nil
	end)
	menu:AddFunction(DELETE, function ()
		self:PerformAction("DELETE", outfit)
	end)

	-- Rebuild
	menu:AddCategoryTitle(self.cRebuild)
	menu:AddFunction(self.cSetCurrentItems, function ()
		self:PerformAction("SET_CURRENT", outfit)
	end)
	local statName
	if outfit.StatConfig then
		statName = self:GetStatConfigName(outfit.StatConfig)
	elseif outfit.StatID then
		statName = self:GetStatIDName(outfit.StatID)
	end
	if statName then
		menu:AddFunction(format(self.cRebuildOutfitFormat, statName),
			function ()
				self:PerformAction("REBUILD", outfit)
			end)
	end
	menu:AddFunction(self.cRebuildFor, function () self:PerformAction("REBUILD_FOR", outfit) end)

	-- Automation
	menu:AddCategoryTitle(self.cAutomation)

	local presetScript = self:GetPresetScriptByID(outfit.ScriptID)
	local scriptName
	if presetScript then
		scriptName = presetScript.Name
	elseif outfit.Script then
		scriptName = self.cCustomScript
	else
		scriptName = nil
	end

	menu:AddChildMenu(string.format(self.cScriptFormat, scriptName or self.cNoScript),
		function (submenu)
			local hasAnyScript = self:GetScript(outfit) ~= nil
			submenu:AddToggle(self.cNoScript,
				function ()
					return (outfit.ScriptID == nil) and not hasAnyScript
				end, function (menu, value)
					self:PerformAction("PRESET_NONE", outfit)
				end)
			submenu:AddFunction(self.cEditScriptEllide,
				function ()
					self:PerformAction("EDIT_SCRIPT", outfit)
				end, (outfit.ScriptID == nil) and hasAnyScript)

			local previousCategory, foundSelectedScript
			for _, presetScript in ipairs(self.PresetScripts) do
				if not presetScript.Class or presetScript.Class == self.PlayerClass then
					-- Get the category for this script
					local category = presetScript.Category or presetScript.Class or "GENERAL"

					-- Add the category once it changes
					if previousCategory ~= category then
						self:AddScriptCategorySubmenu(submenu, category,
							function ()
								return outfit.ScriptID
							end, function (menu, value)
								self:PerformAction("PRESET_"..value, outfit)
							end)
						previousCategory = category
						foundSelectedScript = false
					end

					if outfit.ScriptID == presetScript.ID then
						foundSelectedScript = true
					end
				end -- if
			end -- for
		end)
	menu:AddFunction(self.cScriptSettings,
		function ()
			self:PerformAction("SCRIPT_SETTINGS", outfit)
		end, scriptName == nil)
	menu:AddToggle(self.cDisableScript,
		function ()
			return outfit.Disabled
		end, function (menu, value)
			self:SetScriptEnabled(outfit, not value)
		end, scriptName == nil)
	menu:AddToggle(self.cDisableOutfitInCombat,
		function ()
			return outfit.CombatDisabled
		end, function (menu, value)
			self:PerformAction("COMBATDISABLE", outfit)
		end, scriptName == nil)

	-- Outfit bar
	if self.OutfitBar then
		menu:AddCategoryTitle(self.cOutfitBar)
		menu:AddToggle(self.cShowInOutfitBar,
			function ()
				return self.OutfitBar:IsOutfitShown(outfit)
			end, function (menu, value)
				self:PerformAction("OUTFITBAR_SHOW", outfit)
			end)
		menu:AddFunction(self.cChangeIcon.."...",
			function ()
				self:PerformAction("OUTFITBAR_CHOOSEICON", outfit)
			end)
	end
end

function Outfitter:GetSortedTitles()
	local titles = {}

	-- Gather the list of known titles
--[[	local numTitles = 0
	for titleIndex = 1, numTitles do
		if IsTitleKnown(titleIndex) then
			local titleName = GetTitleName(titleIndex)
			table.insert(titles, {name = titleName, index = titleIndex})
		end
	end--]] --Miv

	-- Sort the list
	table.sort(titles, function (a, b)
		return a.name < b.name
	end)

	return titles
end

function Outfitter:AddTitleSelectMenu(menu, menuTitle, outfit, titles, startIndex, maxTitles)
	-- Calculate the endIndex
	local endIndex = startIndex + maxTitles - 1
	if endIndex > #titles then
		endIndex = #titles
	end

	-- Build the list of values
	local values = {}
	for titleIndex = startIndex, endIndex do
		table.insert(values, titles[titleIndex].name)
	end

	menu:AddSelect(menuTitle, values,
		function ()
			local selectedTitleIndex = outfit.ShowTitleID
			if not selectedTitleIndex then
				selectedTitleIndex = -1
			end
			for titleIndex = startIndex, endIndex do
				if titles[titleIndex].index == selectedTitleIndex then
					return titleIndex - startIndex + 1
				end
			end
		end, function (menu, value)
			local title = titles[value + startIndex - 1]

			-- No title for the first index
			if title.index == -1 then
				outfit.ShowTitleID = nil

			-- Find the titleID for the index
			else
				outfit.ShowTitleID = title.index
			end
			Outfitter.HasHWEvent = true
			self.OutfitStack:UpdateOutfitDisplay()
			Outfitter.HasHWEvent = false
		end)
end

function Outfitter:AddScriptCategorySubmenu(menu, category, get, set)
	local title = self.cScriptCategoryName[category]
	if not title then
		local isFemale = UnitSex("player") == 3
		if isFemale then
			title = LOCALIZED_CLASS_NAMES_FEMALE[category]
		else
			title = LOCALIZED_CLASS_NAMES_MALE[category]
		end
	end
	assert(title, "no name found for category "..tostring(category))

	menu:AddChildMenu(title, function (submenu)
			for _, presetScript in ipairs(self.PresetScripts) do
				local scriptCategory = presetScript.Category or presetScript.Class or "GENERAL"

				-- Add the item if it's the right category
				if (not presetScript.Class or presetScript.Class == self.PlayerClass) and scriptCategory == category then

					-- Ellide the name if there are inputs
					local name = presetScript.Name
					local scriptFields = self:ParseScriptFields(presetScript.Script)
					if scriptFields.Inputs ~= nil and #scriptFields.Inputs ~= 0 then
						name = name.."..."
					end

					-- Add the item
					submenu:AddToggle(name,
						function ()
							return get() == presetScript.ID
						end, function (menu, value)
							set(menu, presetScript.ID)
						end, nil, {
							desc = Outfitter:GetScriptDescription(presetScript.Script)
						})
				end -- if
			end -- for
		end)
end

function Outfitter.ItemDropDownMenuFunc(dropdown, menu)
	local listItem = dropdown:GetParent():GetParent()
	local outfit = listItem:GetOutfit()
	Outfitter:AddOutfitMenu(menu, outfit)
end

function Outfitter.ItemDropDown_Initialize(pFrame)
	local vItem = pFrame:GetParent():GetParent()
	local vOutfit = vItem:GetOutfit()

	Outfitter:InitializeOutfitMenu(pFrame, vOutfit)

	pFrame:SetHeight(pFrame.SavedHeight)
end

function Outfitter:SetAutoSwitch(pAutoSwitch)
	local vDisableAutoSwitch = not pAutoSwitch

	if self.Settings.Options.DisableAutoSwitch == vDisableAutoSwitch then
		return
	end

	self.Settings.Options.DisableAutoSwitch = vDisableAutoSwitch

	if pAutoSwitch then
		self:ActivateAllScripts()
	else
		self:DeactivateAllScripts()
	end

	self.DisplayIsDirty = true
	self:Update(false)
end

function Outfitter:SetShowTooltipInfo(pShowInfo)
	self.Settings.Options.DisableToolTipInfo = not pShowInfo
	self:Update(false)
end

function Outfitter:SetShowItemComparisons(pShowComparisons)
	self.Settings.Options.DisableItemComparisons = not pShowComparisons

	if pShowComparisons and not self.ExtendedCompareTooltip then
		self.ExtendedCompareTooltip = self:New(self._ExtendedCompareTooltip)
	end
end

function Outfitter:SetShowMinimapButton(pShowButton)
	self.Settings.Options.HideMinimapButton = not pShowButton

	if self.Settings.Options.HideMinimapButton then
		OutfitterMinimapButton:Hide()
	else
		OutfitterMinimapButton:Show()
	end

	self:Update(false)
end

function Outfitter:SetShowHotkeyMessages(pShowHotkeyMessages)
	self.Settings.Options.DisableHotkeyMessages = not pShowHotkeyMessages

	self:Update(false)
end

function Outfitter:OutfitIsVisible(pOutfit)
	return not pOutfit.Disabled
	   and not pOutfit:IsEmpty()
	   and (not pOutfit.OutfitBar or not pOutfit.OutfitBar.Hide)
end

function Outfitter:HasVisibleOutfits(pOutfits)
	if not pOutfits then
		return false
	end

	for vIndex, vOutfit in pairs(pOutfits) do
		if self:OutfitIsVisible(vOutfit) then
			return true
		end
	end

	return false
end

function Outfitter:GetCategoryOrder()
	return self.cCategoryOrder
end

function Outfitter:GetOutfitsByCategoryID(pCategoryID)
	return self.Settings.Outfits[pCategoryID]
end

function Outfitter.MinimapDropDown_InitializeOutfitList(pFrame)
	-- Just return if not initialized yet

	if not Outfitter.Initialized then
		return
	end

	--

	local vInventoryCache = Outfitter:GetInventoryCache()
	local vCategoryOrder = Outfitter:GetCategoryOrder()

	for vCategoryIndex, vCategoryID in ipairs(vCategoryOrder) do
		local vCategoryName = Outfitter["c"..vCategoryID.."Outfits"]
		local vOutfits = Outfitter:GetOutfitsByCategoryID(vCategoryID)

		if Outfitter:HasVisibleOutfits(vOutfits) then
			Outfitter:AddCategoryMenuItem(vCategoryName)

			for vIndex, vOutfit in ipairs(vOutfits) do
				if Outfitter:OutfitIsVisible(vOutfit) then
					local vWearingOutfit = Outfitter:WearingOutfit(vOutfit)
					local vMissingItems, vBankedItems = vInventoryCache:GetMissingItems(vOutfit)
					local vItemColor = NORMAL_FONT_COLOR_CODE

					if vMissingItems then
						vItemColor = RED_FONT_COLOR_CODE
					elseif vBankedItems then
						vItemColor = Outfitter.BANKED_FONT_COLOR_CODE
					end

					Outfitter:AddMenuItem(
							pFrame,
							vOutfit:GetName(),
							{CategoryID = vCategoryID, Index = vIndex},
							vWearingOutfit, -- Checked
							nil, -- Level
							vItemColor, -- Color
							nil, -- Disabled
							{icon = Outfitter.OutfitBar:GetOutfitTexture(vOutfit)})
				end
			end
		end
	end
end

function Outfitter.DropDown_OnClick(pItem, pOwner, pValue)
	if not pOwner then
		Outfitter:DebugTable(pItem, "OnClick Item")
		return
	end

	if pOwner.AutoSetValue then
		pOwner:SetSelectedValue(pValue)
	end

	if pOwner.ChangedValueFunc then
		pOwner.ChangedValueFunc(pOwner, pValue)
	end

	CloseDropDownMenus()
end

function Outfitter:GenerateItemListString(pLabel, pListColorCode, pItems)
	local vItemList = nil

	for vIndex, vOutfitItem in ipairs(pItems) do
		if not vItemList then
			vItemList = HIGHLIGHT_FONT_COLOR_CODE..pLabel..pListColorCode..tostring(vOutfitItem.Name)
		else
			vItemList = vItemList..self.cMissingItemsSeparator..tostring(vOutfitItem.Name)
		end
	end

	return vItemList
end

function Outfitter.AddNewbieTip(pItem, pNormalText, pRed, pGreen, pBlue, pNewbieText, pNoNormalText)
	if GetCVarBool("UberTooltips") then
		GameTooltip_SetDefaultAnchor(GameTooltip, pItem)
		if pNormalText then
			GameTooltip:SetText(pNormalText, pRed, pGreen, pBlue)
			GameTooltip:AddLine(pNewbieText, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1)
		else
			GameTooltip:SetText(pNewbieText, pRed, pGreen, pBlue, 1, 1)
		end
		GameTooltip:Show()
	else
		if not pNoNormalText then
			GameTooltip:SetOwner(pItem, "ANCHOR_RIGHT")
			GameTooltip:SetText(pNormalText, pRed, pGreen, pBlue)
		end
	end
end

function Outfitter:ShowOutfitTooltip(pOutfit, pOwner, pMissingItems, pBankedItems, pShowEmptyTooltips, pTooltipAnchor)
	-- local vInventoryCache = self:GetInventoryCache()
	-- local vMissingItems, vBankedItems = vInventoryCache:GetMissingItems(pOutfit)

	local vDescription = self:GetOutfitDescription(pOutfit)

	if pMissingItems
	or pBankedItems
	or pShowEmptyTooltips then
		GameTooltip:SetOwner(pOwner, pTooltipAnchor or "ANCHOR_LEFT")

		GameTooltip:AddLine(pOutfit:GetName())

		if vDescription then
			GameTooltip:AddLine(vDescription, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, true)
		end

		if pMissingItems then
			local vItemList = self:GenerateItemListString(self.cMissingItemsLabel, RED_FONT_COLOR_CODE, pMissingItems)
			GameTooltip:AddLine(vItemList, RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b, true)
		end

		if pBankedItems then
			local vItemList = self:GenerateItemListString(self.cBankedItemsLabel, self.BANKED_FONT_COLOR_CODE, pBankedItems)
			GameTooltip:AddLine(vItemList, RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b, true)
		end

		GameTooltip:Show()
	elseif vDescription then
		self.AddNewbieTip(pOwner, pOutfit:GetName(), 1.0, 1.0, 1.0, vDescription, 1)
	end

	ResetCursor()
end

function Outfitter:GetOutfitDescription(pOutfit)
	return self:GetScriptDescription(self:GetScript(pOutfit))
end

function Outfitter:OutfitHasSettings(pOutfit)
	return self:ScriptHasSettings(self:GetScript(pOutfit))
end

function Outfitter:ToggleOutfitMenuAtCursor(outfit)
	if self.outfitMenu then
		self:HideOutfitMenu()
	else
		self:ShowOutfitMenuAtCursor(outfit)
	end
end

function Outfitter:ShowOutfitMenuAtCursor(outfit)
	if self.outfitMenu then
		return
	end

	-- Create the items
	local items = Outfitter:New(Outfitter.UIElementsLib._DropDownMenuItems, function ()

		-- Close the menu after a short delay when a menu item is selected
		Outfitter.SchedulerLib:ScheduleTask(0.1, function ()
			self:HideOutfitMenu()
		end)
	end)

	-- Get the items
	Outfitter:AddOutfitMenu(items, outfit)

	-- Get the cursor position
	local cursorX, cursorY = GetCursorPosition()
	local scaling = UIParent:GetEffectiveScale()
	cursorX = cursorX / scaling
	cursorY = cursorY / scaling

	-- Use the screen quadrant as an anchor for the menu
	local quadrant = Outfitter:GetScreenQuadrantFromCoordinates(cursorX, cursorY)

	-- Show the menu
	self.outfitMenu = Outfitter:New(Outfitter.UIElementsLib._DropDownMenu)
	self.outfitMenu:Show(items, quadrant, UIParent, "BOTTOMLEFT", cursorX, cursorY)
	self.outfitMenu.cleanup = function ()
		self.outfitMenu = nil
	end
end

function Outfitter:HideOutfitMenu()
	if not self.outfitMenu then
		return
	end

	self.outfitMenu:Hide()
end

function Outfitter:Item_CheckboxClicked(pItem)
	if pItem.isCategory then
		return
	end

	local vOutfits = Outfitter.Settings.Outfits[pItem.categoryID]

	if not vOutfits then
		-- Error: outfit category not found
		return
	end

	local vOutfit = vOutfits[pItem.outfitIndex]

	if not vOutfit then
		-- Error: outfit not found
		return
	end

	local vCheckbox = _G[pItem:GetName().."OutfitSelected"]

	if vCheckbox:GetChecked() then
		vOutfit.Disabled = nil
		Outfitter:WearOutfit(vOutfit)
	else
		Outfitter:RemoveOutfit(vOutfit)
	end

	self.DisplayIsDirty = true
	self:Update(true)
end

function Outfitter:Item_StoreOnServerClicked(pItem)
	return
end

function Outfitter:AddOutfitsToList(pOutfits, pCategoryID, pItemIndex, pFirstItemIndex, pInventoryCache)
	local vOutfits = pOutfits[pCategoryID]
	local vItemIndex = pItemIndex
	local vFirstItemIndex = pFirstItemIndex
	local vItem = _G["OutfitterItem"..pItemIndex]

	if vFirstItemIndex == 0 then
		vItem:SetToCategory(pCategoryID, false)
		vItemIndex = vItemIndex + 1
	else
		vFirstItemIndex = vFirstItemIndex - 1
	end

	if vItemIndex >= self.cMaxDisplayedItems then
		return vItemIndex, vFirstItemIndex
	end

	if not self.Collapsed[pCategoryID]
	and vOutfits then
		for vIndex, vOutfit in ipairs(vOutfits) do
			if vFirstItemIndex == 0 then
				local vItem2 = _G["OutfitterItem"..vItemIndex]
				vItem2:SetToOutfit(vOutfit, pCategoryID, vIndex, pInventoryCache)
				vItemIndex = vItemIndex + 1

				if vItemIndex >= self.cMaxDisplayedItems then
					return vItemIndex, vFirstItemIndex
				end
			else
				vFirstItemIndex = vFirstItemIndex - 1
			end
		end
	end

	return vItemIndex, vFirstItemIndex
end

function Outfitter:AddOutfitItemsToList(pOutfitItems, pCategoryID, pItemIndex, pFirstItemIndex)
	local vItemIndex = pItemIndex
	local vFirstItemIndex = pFirstItemIndex
	local vItem = _G["OutfitterItem"..pItemIndex]

	if vFirstItemIndex == 0 then
		vItem:SetToCategory(pCategoryID, false)
		vItemIndex = vItemIndex + 1
	else
		vFirstItemIndex = vFirstItemIndex - 1
	end

	if vItemIndex >= self.cMaxDisplayedItems then
		return vItemIndex, vFirstItemIndex
	end

	if not self.Collapsed[pCategoryID] then
		for vIndex, vOutfitItem in ipairs(pOutfitItems) do
			if vFirstItemIndex == 0 then
				local vItem2 = _G["OutfitterItem"..vItemIndex]
				vItem2:SetToItem(vOutfitItem)

				vItemIndex = vItemIndex + 1

				if vItemIndex >= self.cMaxDisplayedItems then
					return vItemIndex, vFirstItemIndex
				end
			else
				vFirstItemIndex = vFirstItemIndex - 1
			end
		end
	end

	return vItemIndex, vFirstItemIndex
end

function Outfitter:SortOutfits()
	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		table.sort(vOutfits, Outfitter.CompareOutfitNames)
	end
end

function Outfitter.CompareOutfitNames(pOutfit1, pOutfit2)
	if pOutfit1.Name ~= pOutfit2.Name then
		if not pOutfit1.Name then
			return false
		end

		if not pOutfit2.Name then
			return true
		end

		return pOutfit1.Name < pOutfit2.Name
	end

	return pOutfit1.StoredInEM and not pOutfit2.StoredInEM
end

function Outfitter:Update(pOutfitsChanged)
	-- Flush the caches

	if pOutfitsChanged then
		wipe(self.OutfitInfoCache)
	end

	-- Just leave if we're not visible (when does this happen?)

	if not OutfitterFrame:IsVisible() then
		return
	end

	--

	if self.CurrentPanel == 1 then
		-- Main panel

		if not self.DisplayIsDirty then
			return
		end

		self.DisplayIsDirty = false

		-- Sort the outfits

		self:SortOutfits()

		-- Get the equippable items so outfits can be marked if they're missing anything

		local vInventoryCache = self:GetInventoryCache()

		-- Update the slot enables if they're shown

		if pOutfitsChanged
		and OutfitterSlotEnables:IsVisible() then
			self:UpdateSlotEnables(self.SelectedOutfit, vInventoryCache)
		end

		vInventoryCache:CompiledUnusedItemsList()

		-- Update the list

		OutfitterMainFrameHighlight:Hide()

		local vFirstItemIndex = FauxScrollFrame_GetOffset(OutfitterMainFrameScrollFrame)
		local vItemIndex = 0

		vInventoryCache:ResetIgnoreItemFlags()

		for vCategoryIndex, vCategoryID in ipairs(self.cCategoryOrder) do
			vItemIndex, vFirstItemIndex = self:AddOutfitsToList(self.Settings.Outfits, vCategoryID, vItemIndex, vFirstItemIndex, vInventoryCache)

			if vItemIndex >= self.cMaxDisplayedItems then
				break
			end
		end

		if vItemIndex < self.cMaxDisplayedItems
		and vInventoryCache.UnusedItems then
			vItemIndex, vFirstItemIndex = self:AddOutfitItemsToList(vInventoryCache.UnusedItems, "OddsNEnds", vItemIndex, vFirstItemIndex)
		end

		-- Add the BoEs
		local vBoEItems = vInventoryCache:GetBoEItems()
		if vItemIndex < self.cMaxDisplayedItems
		and vBoEItems and #vBoEItems > 0 then
			vItemIndex, vFirstItemIndex = self:AddOutfitItemsToList(vBoEItems, "BoEs", vItemIndex, vFirstItemIndex)
		end

		-- Hide any unused items
		for vItemIndex2 = vItemIndex, (self.cMaxDisplayedItems - 1) do
			local vItemName = "OutfitterItem"..vItemIndex2
			local vItem = _G[vItemName]

			vItem:Hide()
		end

		-- Count the total items
		local vTotalNumItems = 0

		-- Add in the main categories
		for vCategoryIndex, vCategoryID in ipairs(self.cCategoryOrder) do
			vTotalNumItems = vTotalNumItems + 1

			local vOutfits = self.Settings.Outfits[vCategoryID]

			if not self.Collapsed[vCategoryID]
			and vOutfits then
				vTotalNumItems = vTotalNumItems + #vOutfits
			end
		end

		-- Add in the Odd 'n Ends category
		if vInventoryCache.UnusedItems then
			vTotalNumItems = vTotalNumItems + 1
			if not self.Collapsed["OddsNEnds"] then
				vTotalNumItems = vTotalNumItems + #vInventoryCache.UnusedItems
			end
		end

		-- Add in the BoEs category
		if vBoEItems and #vBoEItems then
			vTotalNumItems = vTotalNumItems + 1
			if not self.Collapsed["BoEs"] then
				vTotalNumItems = vTotalNumItems + #vBoEItems
			end
		end

		FauxScrollFrame_Update(
				OutfitterMainFrameScrollFrame,
				vTotalNumItems,                 -- numItems
				self.cMaxDisplayedItems,        -- numToDisplay
				18,                             -- valueStep
				nil, nil, nil,                  -- button, smallWidth, bigWidth
				nil,                            -- highlightFrame
				0, 0)                           -- smallHighlightWidth, bigHighlightWidth
	elseif self.CurrentPanel == 2 then -- Options panel
		OutfitterAutoSwitch:SetChecked(self.Settings.Options.DisableAutoSwitch)
		OutfitterShowMinimapButton:SetChecked(not self.Settings.Options.HideMinimapButton)
		OutfitterTooltipInfo:SetChecked(not self.Settings.Options.DisableToolTipInfo)
		OutfitterShowHotkeyMessages:SetChecked(not self.Settings.Options.DisableHotkeyMessages)
		OutfitterShowOutfitBar:SetChecked(self.Settings.OutfitBar.ShowOutfitBar)
		OutfitterItemComparisons:SetChecked(not self.Settings.Options.DisableItemComparisons)
	end
end

function Outfitter.OnVerticalScroll(pScrollFrame)
	Outfitter.DisplayIsDirty = true
	Outfitter:Update(false)
end

function Outfitter:SelectOutfit(pOutfit)
	if not self:IsOpen() then
		return
	end

	self.SelectedOutfit = pOutfit

	-- Get the equippable items so outfits can be marked if they're missing anything

	local vInventoryCache = self:GetInventoryCache()

	-- Update the slot enables

	self:UpdateSlotEnables(pOutfit, vInventoryCache)
	OutfitterSlotEnables:Show()

	-- Done, rebuild the list

	self.DisplayIsDirty = true
end

function Outfitter:UpdateSlotEnables(pOutfit, pInventoryCache)
	for _, vInventorySlot in ipairs(self.cSlotNames) do
		local vCheckbox = _G["OutfitterEnable"..vInventorySlot]

		if not pOutfit:SlotIsEnabled(vInventorySlot) then
			vCheckbox:SetChecked(false)
		else
			if pOutfit:SlotIsEquipped(vInventorySlot, pInventoryCache) then
				vCheckbox:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")
				vCheckbox.IsUnknown = false
			else
				vCheckbox:SetCheckedTexture("Interface\\Addons\\Outfitter\\Textures\\CheckboxUnknown")
				vCheckbox.IsUnknown = true
			end

			vCheckbox:SetChecked(true)
		end
	end
end

function Outfitter:ClearSelection()
	self.SelectedOutfit = nil
	self.DisplayIsDirty = true
	OutfitterSlotEnables:Hide()
end

function Outfitter:FindOutfitItemIndex(pOutfit)
	local vOutfitCategoryID, vOutfitIndex = self:FindOutfit(pOutfit)

	if not vOutfitCategoryID then
		return nil
	end

	local vItemIndex = 0

	for vCategoryIndex, vCategoryID in ipairs(self.cCategoryOrder) do
		vItemIndex = vItemIndex + 1

		if not self.Collapsed[vCategoryID] then
			if vOutfitCategoryID == vCategoryID then
				return vItemIndex + vOutfitIndex - 1
			else
				vItemIndex = vItemIndex + #self.Settings.Outfits[vCategoryID]
			end
		end
	end

	return nil
end

function Outfitter:WearOutfitByName(pOutfitName, pLayerID)
	vOutfit = self:FindOutfitByName(pOutfitName)

	if not vOutfit then
		self:ErrorMessage("Couldn't find outfit named %s", pOutfitName)
		return
	end

	self:WearOutfit(vOutfit, pLayerID)
end

function Outfitter:RemoveOutfitByName(pOutfitName, pLayerID)
	vOutfit = self:FindOutfitByName(pOutfitName)

	if not vOutfit then
		self:ErrorMessage("Couldn't find outfit named %s", pOutfitName)
		return
	end

	self:RemoveOutfit(vOutfit)
end

function Outfitter:WearOutfitNow(pOutfit, pLayerID, pCallerIsScript)
	self:BeginEquipmentUpdate()
	self:WearOutfit(pOutfit, pLayerID, pCallerIsScript)
	self:EndEquipmentUpdate(nil, true)
end

function Outfitter:WearOutfit(pOutfit, pLayerID, pCallerIsScript)
	self:BeginEquipmentUpdate()

	-- Update the equipment

	pOutfit.didEquip = pCallerIsScript
	pOutfit.didUnequip = false

	self.EquippedNeedsUpdate = true

	-- Add the outfit to the stack

	if pOutfit.CategoryID == "Complete" then
		self.OutfitStack:Clear()
	elseif pOutfit.UnequipOthers then
		self.OutfitStack:ClearCategory("Accessory")
	end

	self.OutfitStack:AddOutfit(pOutfit, pLayerID)

	-- If it's a Complete outfit, push it onto the list of recent complete outfits

	if pOutfit.CategoryID == "Complete" and pOutfit:GetName() then
		local vOutfitName = pOutfit:GetName()

		for vRecentIndex, vRecentName in ipairs(self.Settings.RecentCompleteOutfits) do
			if vRecentName == vOutfitName then
				table.remove(self.Settings.RecentCompleteOutfits, vRecentIndex)
				break
			end
		end

		table.insert(self.Settings.RecentCompleteOutfits, vOutfitName)
	end

	-- If Outfitter is open then also select the outfit.  This is important
	-- because the UI can't function correctly if the selected outfit and
	-- top outfit don't stay the same.

	if self:IsOpen() then
		if self.OutfitStack:IsTopmostOutfit(pOutfit) then
			self:SelectOutfit(pOutfit)
		else
			self:ClearSelection()
		end
	end

	self:EndEquipmentUpdate("Outfitter:WearOutfit")
end

function Outfitter:RemoveOutfitNow(pOutfit, pCallerIsScript)
	self:BeginEquipmentUpdate()
	self:RemoveOutfit(pOutfit, pCallerIsScript)
	self:EndEquipmentUpdate(nil, true)
end


function Outfitter:RemoveOutfit(pOutfit, pCallerIsScript)
	-- HACK: Disabling the unequipping of Complete outfits to see it works better
	-- for more end-user situations

	-- UPDATE: It doesn't :(  Stealth, riding and other gear as Complete outfits
	-- fail to unequip

	--if pOutfit.CategoryID == "Complete" then
	--	return
	--end

	-- Remove it from the stack

	if not self.OutfitStack:RemoveOutfit(pOutfit) then
		return
	end

	-- If it's a Complete outfit, move it to the bottom of the list of recent complete outfits

	if pOutfit.CategoryID == "Complete" and pOutfit:GetName() then
		for vRecentIndex, vRecentName in ipairs(self.Settings.RecentCompleteOutfits) do
			if vRecentName == pOutfit:GetName() then
				table.remove(self.Settings.RecentCompleteOutfits, vRecentIndex)
				break
			end
		end

		table.insert(self.Settings.RecentCompleteOutfits, 1, pOutfit:GetName())
	end

	--

	self:BeginEquipmentUpdate()

	-- Clear the selection if the outfit being removed
	-- is selected too

	if self.SelectedOutfit == pOutfit then
		self:ClearSelection()
	end

	-- Update the list

	pOutfit.didEquip = false
	pOutfit.didUnequip = pCallerIsScript

	self.EquippedNeedsUpdate = true

	self:EndEquipmentUpdate("Outfitter:RemoveOutfit")

	self:DispatchOutfitEvent("UNWEAR_OUTFIT", pOutfit:GetName(), pOutfit)

	-- If they're removing a complete outfit, find something else to wear instead

	if pOutfit.CategoryID == "Complete"
	and #self.Settings.RecentCompleteOutfits then
		local vOutfit

		while not vOutfit do
			local vOutfitName = self.Settings.RecentCompleteOutfits[#self.Settings.RecentCompleteOutfits]

			vOutfit = self:FindOutfitByName(vOutfitName)

			if vOutfit and vOutfit.CategoryID == "Complete" then
				self:WearOutfit(vOutfit)
				break
			end

			table.remove(self.Settings.RecentCompleteOutfits)

			if #self.Settings.RecentCompleteOutfits then
				break
			end
		end
	end
end

function Outfitter:ToggleOutfitNow(pOutfit)
	if self:WearingOutfit(pOutfit) then
		self:RemoveOutfitNow(pOutfit)
		return false
	else
		self:WearOutfitNow(pOutfit)
		return true
	end
end

function Outfitter:ToggleOutfit(pOutfit)
	if self:WearingOutfit(pOutfit) then
		self:RemoveOutfit(pOutfit)
		return false
	else
		self:WearOutfit(pOutfit)
		return true
	end
end

function Outfitter:SetSoundOption(pParam)
	if pParam == "on" then
		self.Settings.EnableEquipSounds = true
		self:NoteMessage("Outfitter will no longer affect sounds during equipment changes")
	elseif pParam == "off" then
		self.Settings.EnableEquipSounds = nil
		self:NoteMessage("Outfitter will now disable sound effects during equipment changes")
	else
		self:NoteMessage("Valid sound options are 'on' and 'off'")
	end
end

function Outfitter:SetErrorsOption(pParam)
	if pParam == "on" then
		self.Settings.DisableEquipErrors = nil
		self:NoteMessage("Outfitter will report errors during equipment changes")
	elseif pParam == "off" then
		self.Settings.DisableEquipErrors = true
		self:NoteMessage("Outfitter will not report errors during equipment changes")
	else
		self:NoteMessage("Valid error options are 'on' and 'off'")
	end
end

function Outfitter:ShowLinkStats(pLink)
	local vStats = self:GetItemLinkStats(pLink)

	if not vStats then
		self:NoteMessage("Couldn't get item stats from the link provided")
		return
	end

	for vStatName, vStatValue in pairs(vStats) do
		self:NoteMessage("%s: %s", vStatName, vStatValue or "nil")
	end
end

function Outfitter:ShowLinkInfo(pLink)
	local vItemInfo = self:GetItemInfoFromLink(pLink)

	if not vItemInfo then
		self:NoteMessage("Couldn't get item info from the link provided")
		return
	end

	self:NoteMessage("Name: "..vItemInfo.Name)
	self:NoteMessage("Quality: "..vItemInfo.Quality)
	self:NoteMessage("Code: "..vItemInfo.Code)
	self:NoteMessage("SubCode: "..vItemInfo.SubCode)
	self:NoteMessage("Type: "..vItemInfo.Type)
	self:NoteMessage("SubType: "..vItemInfo.SubType)
	self:NoteMessage("InvType: "..vItemInfo.InvType)
	self:NoteMessage("Level: "..vItemInfo.Level)
	if vItemInfo.EnchantCode then
		self:NoteMessage("EnchantCode: "..vItemInfo.EnchantCode)
	end
	if vItemInfo.JewelCode1 then
		self:NoteMessage("JewelCode1: "..vItemInfo.JewelCode1)
	end
	if vItemInfo.JewelCode2 then
		self:NoteMessage("JewelCode2: "..vItemInfo.JewelCode2)
	end
	if vItemInfo.JewelCode3 then
		self:NoteMessage("JewelCode3: "..vItemInfo.JewelCode3)
	end
	if vItemInfo.JewelCode4 then
		self:NoteMessage("JewelCode4: "..vItemInfo.JewelCode4)
	end
	if vItemInfo.UniqueID then
		self:NoteMessage("UniqueID: "..vItemInfo.UniqueID)
	end
	if vItemInfo.ReforgeID then
		self:NoteMessage("ReforgeID: "..vItemInfo.ReforgeID)
	end
	if vItemInfo.InstanceDifficultyID then
		self:NoteMessage("InstanceDifficultyID: "..vItemInfo.InstanceDifficultyID)
	end
	if vItemInfo.UpgradeTypeID then
		self:NoteMessage("UpgradeTypeID: "..vItemInfo.UpgradeTypeID)
	end
	if vItemInfo.UpgradeID then
		self:NoteMessage("UpgradeID: "..vItemInfo.UpgradeID)
	end
	if vItemInfo.BonusIDs and vItemInfo.BonusIDs ~= "::" then
		self:NoteMessage("BonusIDs: "..vItemInfo.BonusIDs)
	end
end

-- don't know where this function went; putting in a stub so its callers don't fail
function Outfitter:GetItemLinkStats(pLink)
	return
end

function Outfitter:DepositOutfitUnique(pOutfit)
	self:DepositOutfit(pOutfit, true)
end

StaticPopupDialogs.OUTFITTER_CONFIRM_RESET =
{
	text = Outfitter.cConfirmResetMsg,
	button1 = Outfitter.cReset,
	button2 = CANCEL,
	OnAccept = function() Outfitter:Reset() end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1,
}

function Outfitter:AskReset(param)
	-- Reset the bar position without prompting
	if strlower(param) == "bar" then
		self.OutfitBar:ResetPosition()
		self:NoteMessage("Outfit bar position reset")

	-- Ask the user if they're certain before resetting the entire addon
	else
		StaticPopup_Show("OUTFITTER_CONFIRM_RESET")
	end
end

function Outfitter:Reset()
	OutfitterFrame:Hide()

	self:ClearSelection()
	self.OutfitStack:Clear()

	self:InitializeSettings()

	self.CurrentOutfit = self:GetInventoryOutfit()
	self:InitializeOutfits()
	self:SynchronizeEM()

	self.EquippedNeedsUpdate = false
end

function Outfitter:SetOutfitBindingIndex(pOutfit, pBindingIndex)
	if pBindingIndex then
		for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
			for vOutfitIndex, vOutfit in ipairs(vOutfits) do
				if vOutfit.BindingIndex == pBindingIndex then
					vOutfit.BindingIndex = nil
				end
			end
		end
	end

	pOutfit.BindingIndex = pBindingIndex
end

Outfitter.LastBindingIndex = nil
Outfitter.LastBindingTime = nil

Outfitter.cMinBindingTime = 0.75

function Outfitter:WearBoundOutfit(pBindingIndex)
	-- Check for the user spamming the button to prevent the outfit from
	-- toggling if they're panicking

	local vTime = GetTime()

	if self.LastBindingIndex == pBindingIndex then
		local vElapsed = vTime - self.LastBindingTime

		if vElapsed < self.cMinBindingTime then
			self.LastBindingTime = vTime
			return
		end
	end

	--

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit.BindingIndex == pBindingIndex then
				vOutfit.Disabled = nil
				Outfitter.HasHWEvent = true
				if vCategoryID == "Complete" then
					self:WearOutfitNow(vOutfit)
					if not self.Settings.Options.DisableHotkeyMessages then
						UIErrorsFrame:AddMessage(format(self.cEquipOutfitMessageFormat, vOutfit:GetName()), self.OUTFIT_MESSAGE_COLOR.r, self.OUTFIT_MESSAGE_COLOR.g, self.OUTFIT_MESSAGE_COLOR.b)
					end
				else
					local vEquipped = self:ToggleOutfitNow(vOutfit, vCategoryID)

					if not self.Settings.Options.DisableHotkeyMessages then
						if vEquipped then
							UIErrorsFrame:AddMessage(format(self.cEquipOutfitMessageFormat, vOutfit:GetName()), self.OUTFIT_MESSAGE_COLOR.r, self.OUTFIT_MESSAGE_COLOR.g, self.OUTFIT_MESSAGE_COLOR.b)
						else
							UIErrorsFrame:AddMessage(format(self.cUnequipOutfitMessageFormat, vOutfit:GetName()), self.OUTFIT_MESSAGE_COLOR.r, self.OUTFIT_MESSAGE_COLOR.g, self.OUTFIT_MESSAGE_COLOR.b)
						end
					end
				end
				Outfitter.HasHWEvent = false

				-- Remember the binding used to filter for button spam

				self.LastBindingIndex = pBindingIndex
				self.LastBindingTime = vTime

				return
			end
		end
	end
end

function Outfitter:FindOutfit(pOutfit)
	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit == pOutfit then
				return vCategoryID, vOutfitIndex
			end
		end
	end

	return nil, nil
end

function Outfitter:FindOutfitByName(pName)
	if not pName
	or pName == "" then
		return nil
	end

	local vLowerName = strlower(pName)

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if strlower(vOutfit:GetName()) == vLowerName then
				return vOutfit, vCategoryID, vOutfitIndex
			end
		end
	end

	return nil, nil
end

function Outfitter:GetOutfitCategoryID(pOutfit)
	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit == pOutfit then
				return vCategoryID, vOutfitIndex
			end
		end
	end
end

-- Outfitter doesn't use this function, but other addons such as
-- Fishing Buddy might use it to locate specific generated outfits

function Outfitter:FindOutfitByStatID(pStatID)
	if not pStatID or pStatID == "" then
		return nil
	end

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit.StatID and vOutfit.StatID == pStatID then
				return vOutfit, vCategoryID, vOutfitIndex
			end
		end
	end

	return nil
end

function Outfitter:OutfitSummary()
end

function Outfitter:RatingSummary()
	local vRatingIDs =
	{
		"Weapon",
		"Defense",
		"Dodge",
		"Parry",
		"Block",
		"Melee Hit",
		"Ranged Hit",
		"Spell Hit",
		"Melee Crit",
		"Ranged Crit",
		"Spell Crit",
		"Melee Hit Taken",
		"Ranged Hit Taken",
		"Spell Hit Taken",
		"Melee Crit Taken",
		"Ranged Crit Taken",
		"Spell Crit Taken",
		"Melee Haste",
		"Ranged Haste",
		"Spell Haste",
	}

	for vRatingID, vRatingName in ipairs(vRatingIDs) do
		local vRating = GetCombatRating(vRatingID)
		local vRatingBonus = GetCombatRatingBonus(vRatingID)

		if vRatingBonus > 0 then
			self:NoteMessage(vRatingName..": "..(vRating / vRatingBonus))
		end
	end
end

-- Work-in-progress for bag organization.  Probably will get split into another addon
-- at some point, just playing around with it for now.

local gOutfitter_SortBagItems
local gOutfitter_Categories =
{
	"Armor",
	"Weapons",
	"Consumables",
		"Potions",
		"Healthstone",
		"Mana gem",
		"Flasks",
		"Elixirs",
		"Bandages",
		"Trinkets",
	"Tradeskill",
		"Herbs",
		"Metals",
		"Gems",
		"Cloth",
		"Leather",
		"Cooking",
			"Spices",
			"Meat",
	"QuestItems",
	"Loot",
		"BoEs",
	"Junk",
}

local gOutfitterItemCorrections =
{
	[6533] = {Type = "Consumable", SubType = "Other"}, -- Aquadynamic Fish Attractor
	[27503] = {SubType = "Scroll"}, -- Scroll of Protection V
	[27515] = {Type = "Trade Goods", SubType = "Meat", InvType = ""}, -- Huge Spotted Feltail
}

function Outfitter:CorrectItemInfo(pItemInfo)
	local vCorrection = gOutfitterItemCorrections[pItemInfo.Code]

	if not vCorrection then
		return
	end

	for vIndex, vValue in pairs(vCorrection) do
		pItemInfo[vIndex] = vValue
	end
end

function Outfitter.GetItemSortRank(pItem)
	if pItem.ItemIsUsed then
		return 0
	elseif pItem.Quality == 0 then
		return 3
	elseif pItem.Equippable then
		return 2
	else
		return 1
	end
end

function Outfitter:RunThreads()
	if self.SortBagsCoroutineRef then
		local vSuccess, vMessage = coroutine.resume(self.SortBagsCoroutineRef, self)

		if not vSuccess then
			self:ErrorMessage("SortBags resume failed: %s", vMessage)
		end
	end
end

Outfitter._BagIterator = {}
Outfitter.cGeneralBagType = 0

function Outfitter._BagIterator:Construct(pStartIndex, pEndIndex)
	self:Reset(pStartIndex, pEndIndex)
end

function Outfitter._BagIterator:Reset(pStartIndex, pEndIndex)
	if not pStartIndex then
		pStartIndex = NUM_BAG_SLOTS
		pEndIndex = 0
	end

	if not pEndIndex then
		pEndIndex = pStartIndex
	end

	if pStartIndex <= pEndIndex then
		self.Direction = 1
	else
		self.Direction = -1
	end

	self.BagIndex = pStartIndex
	self.EndBagIndex = pEndIndex

	self.BagSlotIndex = 0

	if pStartIndex == pEndIndex
	or Outfitter:GetBagType(self.BagIndex)== Outfitter.cGeneralBagType then
		self.NumBagSlots = C_Container.GetContainerNumSlots(self.BagIndex)
	else
		self.NumBagSlots = 0
	end
end

function Outfitter._BagIterator:NextSlot()
	self.BagSlotIndex = self.BagSlotIndex + 1

	while self.BagSlotIndex > self.NumBagSlots do
		if self.BagIndex == self.EndBagIndex then
			return false
		end

		self.BagIndex = self.BagIndex + self.Direction

		self.BagSlotIndex = 1

		if Outfitter:GetBagType(self.BagIndex) == Outfitter.cGeneralBagType then
			self.NumBagSlots = C_Container.GetContainerNumSlots(self.BagIndex)
		else
			self.NumBagSlots = 0
		end
	end

	return true
end

function Outfitter:ItemUsesBothWeaponSlots(pItem)
	if not pItem then
		self:DebugMessage("ItemUsesBothWeaponSlots: nil item")
		self:DebugStack()
		return false
	end

	if pItem.InvType ~= "INVTYPE_2HWEAPON"then
		return false
	end

	if not self.CanDualWield2H then
		return true
	end

	if not pItem.SubType then
		self:DebugMessage("ItemUsesBothWeaponSlots: SubType not specified")
		self:DebugTable(pItem, "pItem")
		self:DebugStack()
	end

	return false
end

function Outfitter:GetItemMetaSlot(pItem)
	if pItem.MetaSlotName == "TwoHandSlot"
	and not self:ItemUsesBothWeaponSlots(pItem) then
		return "Weapon0Slot"
	else
		return pItem.MetaSlotName
	end
end

function Outfitter:GetCompiledOutfit()
	local vCompiledOutfit = self:NewEmptyOutfit()

	vCompiledOutfit.SourceOutfit = {}

	-- Start with the current inventory

	if self.CurrentInventoryOutfit then
		local vItems = self.CurrentInventoryOutfit:GetItems()

		for vInventorySlot, vOutfitItem in pairs(vItems) do
			vCompiledOutfit:SetItem(vInventorySlot, vOutfitItem)
			vCompiledOutfit.SourceOutfit[vInventorySlot] = "Equipped"
		end
	end

	-- Layer each selected outfit

	for vStackIndex, vOutfit in ipairs(Outfitter.OutfitStack.Outfits) do
		local vItems = vOutfit:GetItems()

		if vItems then
			for vInventorySlot, vOutfitItem in pairs(vItems) do
				vCompiledOutfit:SetItem(vInventorySlot, vOutfitItem)
				vCompiledOutfit.SourceOutfit[vInventorySlot] = vOutfit:GetName()
			end
		end
	end

	-- Make sure the OH slot is marked as empty if a 2H weapon is equipped
	-- and the player can't dual-wield 2H weapons

	vCompiledOutfit:AdjustOffhandSlot()

	return vCompiledOutfit
end

function Outfitter:GetCurrentCompleteOutfit()
	for vStackIndex, vOutfit in ipairs(self.OutfitStack.Outfits) do
		if vOutfit.CategoryID == "Complete" then
			return vOutfit
		end
	end
end

function Outfitter:GetExpectedOutfit(pExcludeOutfit)
	local vCompiledOutfit = self:NewEmptyOutfit()

	vCompiledOutfit.SourceOutfit = {}

	for vStackIndex, vOutfit in ipairs(self.OutfitStack.Outfits) do
		if vOutfit ~= pExcludeOutfit then
			local vItems = vOutfit:GetItems()

			for vInventorySlot, vOutfitItem in pairs(vItems) do
				vCompiledOutfit:SetItem(vInventorySlot, vOutfitItem)
				vCompiledOutfit.SourceOutfit[vInventorySlot] = vOutfit:GetName()
			end
		end
	end

	return vCompiledOutfit
end

function Outfitter:GetBagType(pBagIndex)
	if pBagIndex == 0
	or pBagIndex == -1 then -- special case 0 and -1 since ContainerIDToInventoryID will barf on it
		return Outfitter.cGeneralBagType
	end

	if pBagIndex < 0 then
		pBagIndex = 4 - pBagIndex
	end

	local vItemLink = GetInventoryItemLink("player", C_Container.ContainerIDToInventoryID(pBagIndex))

	if not vItemLink then
		return nil
	end

	return GetItemFamily(vItemLink)
end

function Outfitter:GetEmptyBagSlot(pStartBagIndex, pStartBagSlotIndex, pIncludeBank)
	local vStartBagIndex = pStartBagIndex
	local vStartBagSlotIndex = pStartBagSlotIndex

	if not vStartBagIndex then
		vStartBagIndex = NUM_BAG_SLOTS
	end

	if not vStartBagSlotIndex then
		vStartBagSlotIndex = 1
	end

	local vEndBagIndex = 0

	if pIncludeBank then
		vEndBagIndex = -1
	end

	for vBagIndex = vStartBagIndex, vEndBagIndex, -1 do
		local vNumEmptySlots, vBagType = C_Container.GetContainerNumFreeSlots(vBagIndex)

		if vNumEmptySlots > 0 then
			local vNumBagSlots = C_Container.GetContainerNumSlots(vBagIndex)

			for vSlotIndex = vStartBagSlotIndex, vNumBagSlots do
				if not C_Container.GetContainerItemLink(vBagIndex, vSlotIndex) then
					return {BagIndex = vBagIndex, BagSlotIndex = vSlotIndex, BagType = vBagType}
				end
			end
		end

		vStartBagSlotIndex = 1
	end

	return nil
end

function Outfitter:GetEmptyBagSlotList()
	local vEmptyBagSlots = {}

	local vBagIndex = NUM_BAG_SLOTS
	local vBagSlotIndex = 1

	while true do
		local vBagSlotInfo = self:GetEmptyBagSlot(vBagIndex, vBagSlotIndex)

		if not vBagSlotInfo then
			return vEmptyBagSlots
		end

		table.insert(vEmptyBagSlots, vBagSlotInfo)

		vBagIndex = vBagSlotInfo.BagIndex
		vBagSlotIndex = vBagSlotInfo.BagSlotIndex + 1
	end
end

function Outfitter:GetEmptyBankSlotList()
	local vEmptyBagSlots = {}

	local vBagIndex = NUM_BAG_SLOTS + NUM_BANKBAGSLOTS
	local vBagSlotIndex = 1

	while true do
		local vBagSlotInfo = self:GetEmptyBagSlot(vBagIndex, vBagSlotIndex, true)

		if not vBagSlotInfo then
			return vEmptyBagSlots

		elseif vBagSlotInfo.BagIndex > NUM_BAG_SLOTS
		or vBagSlotInfo.BagIndex < 0 then
			table.insert(vEmptyBagSlots, vBagSlotInfo)
		end

		vBagIndex = vBagSlotInfo.BagIndex
		vBagSlotIndex = vBagSlotInfo.BagSlotIndex + 1
	end
end

function Outfitter:FindItemsInBagsForSlot(pSlotName, pIgnoreItems)
	-- Alias the slot names down for finger and trinket

	local vInventorySlot = pSlotName

	if vInventorySlot == "Finger1Slot" then
		vInventorySlot = "Finger0Slot"
	elseif vInventorySlot == "Trinket1Slot" then
		vInventorySlot = "Trinket0Slot"
	end

	--

	local vItems = {}
	local vNumBags, vFirstBagIndex = self:GetNumBags()

	for vBagIndex = vFirstBagIndex, vNumBags do
		local vNumBagSlots = C_Container.GetContainerNumSlots(vBagIndex)

		if vNumBagSlots > 0 then
			for vSlotIndex = 1, vNumBagSlots do
				local vItemInfo = self:GetBagItemInfo(vBagIndex, vSlotIndex)

				if vItemInfo
				and (not pIgnoreItems or not pIgnoreItems[vItemInfo.Code]) then
					local vItemSlotName = vItemInfo.ItemSlotName

					if vItemInfo.MetaSlotName then
						vItemSlotName = self:GetItemMetaSlot(vItemInfo)
					end

					if vItemSlotName == "TwoHandSlot" then
						vItemSlotName = "MainHandSlot"

					elseif vItemSlotName == "Weapon0Slot" then
						if vInventorySlot == "MainHandSlot"
						or vInventorySlot == "SecondaryHandSlot" then
							vItemSlotName = vInventorySlot
						end
					end

					if vItemSlotName == vInventorySlot then
						table.insert(vItems, vItemInfo)
					end
				end
			end
		end
	end

	if #vItems == 0 then
		return nil
	end

	return vItems
end

function Outfitter:OpenNameOutfitDialog(pOutfit)
	if not self.NameOutfitDialog then
		self.NameOutfitDialog = Outfitter:New(Outfitter._NameOutfitDialog, UIParent)
	end
	self.NameOutfitDialog:Open(pOutfit)
end

function Outfitter:OpenRebuildOutfitDialog(pOutfit)
	if not self.RebuildOutfitDialog then
		self.RebuildOutfitDialog = Outfitter:New(Outfitter._RebuildOutfitDialog, UIParent)
	end
	self.RebuildOutfitDialog:Open(pOutfit)
end

function Outfitter:CreateNewOutfit()
	self:OpenNameOutfitDialog(nil)
end

function Outfitter:NewNakedOutfit(pName)
	local vOutfit = self:NewEmptyOutfit(pName)

	for _, vInventorySlot in ipairs(Outfitter.cSlotNames) do
		vOutfit:AddItem(vInventorySlot, nil)
	end

	return vOutfit
end

function Outfitter:NewEmptyItemInfo()
	return
	{
		Name = "",
		Code = 0,
		SubCode = 0,
		EnchantCode = 0,
		JewelCode1 = 0,
		JewelCode2 = 0,
		JewelCode3 = 0,
		JewelCode4 = 0,
		UniqueID = 0,
		UpgradeTypeID = 0,
		InstanceDifficultyID = 0,
		BonusIDs = "::",
		UpgradeID = 0,
		InvType = nil,
	}
end

function Outfitter.AzeriteCodesMatch(azeriteCodes1, azeriteCodes2)
	if not azeriteCodes1 and not azeriteCodes2 then
		return true
	end

	if not azeriteCodes1 or not azeriteCodes2 then
		return false
	end

	if #azeriteCodes1 ~= #azeriteCodes2 then
		return false
	end

	for powerID, _ in pairs(azeriteCodes1) do
		if not azeriteCodes2[powerID] then
			return false
		end
	end

	return true
end

function Outfitter:GetInventoryOutfit(pName, pOutfit)
	local vOutfit

	if pOutfit then
		vOutfit = pOutfit
	else
		vOutfit = self:NewEmptyOutfit(pName)
	end

	for _, vInventorySlot in ipairs(Outfitter.cSlotNames) do
		local vItemInfo = self:GetInventoryItemInfo(vInventorySlot)

		-- To avoid extra memory operations, only update the item if it's different

		local vExistingItem = vOutfit:GetItem(vInventorySlot)

		if not vItemInfo then
			if not vExistingItem
			or vExistingItem.Code ~= 0 then
				vOutfit:AddItem(vInventorySlot, nil)
			end
		else
			if not vExistingItem
			or vExistingItem.Code ~= vItemInfo.Code
			or vExistingItem.SubCode ~= vItemInfo.SubCode
			or vExistingItem.EnchantCode ~= vItemInfo.EnchantCode
			or vExistingItem.JewelCode1 ~= vItemInfo.JewelCode1
			or vExistingItem.JewelCode2 ~= vItemInfo.JewelCode2
			or vExistingItem.JewelCode3 ~= vItemInfo.JewelCode3
			or vExistingItem.JewelCode4 ~= vItemInfo.JewelCode4
			or vExistingItem.UniqueID ~= vItemInfo.UniqueID
			or vExistingItem.UpgradeItemID ~= vItemInfo.UpgradeItemID
			or vExistingItem.InstanceDifficultyID ~= vItemInfo.InstanceDifficultyID
			or vExistingItem.BonusIDs ~= vItemInfo.BonusIDs
			or vExistingItem.UpgradeID ~= vItemInfo.UpgradeID
			or vExistingItem.ReforgeID ~= vItemInfo.ReforgeID
			or not Outfitter.AzeriteCodesMatch(vExistingItem.AzeriteCodes, vItemInfo.AzeriteCodes) then
				vOutfit:AddItem(vInventorySlot, vItemInfo)
			end
		end
	end

	return vOutfit
end

function Outfitter:UpdateOutfitFromInventory(pOutfit, pNewItemsOutfit)
	if not pNewItemsOutfit then
		return
	end

	local vNewItems = pNewItemsOutfit:GetItems()

	pOutfit:AddNewItems(vNewItems)

	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter:SubtractOutfit(pOutfit1, pOutfit2, pCheckAlternateSlots)
	local vInventoryCache = self:GetInventoryCache()

	-- Remove items from pOutfit1 if they match the item in pOutfit2

	for _, vInventorySlot in ipairs(self.cSlotNames) do
		local vItem1 = pOutfit1:GetItem(vInventorySlot)
		local vItem2 = pOutfit2:GetItem(vInventorySlot)

		if vInventoryCache:ItemsAreSame(vItem1, vItem2) then
			pOutfit1:RemoveItem(vInventorySlot)
		elseif pCheckAlternateSlots then
			local vAlternateSlotName = self.cFullAlternateStatSlot[vInventorySlot]

			vItem2 = pOutfit2:GetItem(vAlternateSlotName)

			if vInventoryCache:ItemsAreSame(vItem1, vItem2) then
				pOutfit1:RemoveItem(vInventorySlot)
			end
		end
	end
end

function Outfitter:OutfitItemsAreSame(pOutfit1, pOutfit2, pCheckAlternateSlots, pIgnoreAmmo)
	local vInventoryCache = self:GetInventoryCache()

	for _, vInventorySlot in ipairs(Outfitter.cSlotNames) do
		local vItem1 = pOutfit1:GetItem(vInventorySlot)
		local vItem2 = pOutfit2:GetItem(vInventorySlot)

		if vInventoryCache:ItemsAreSame(vItem1, vItem2) then
			-- do nothing
		elseif pCheckAlternateSlots then
			local vAlternateSlotName = self.cFullAlternateStatSlot[vInventorySlot]

			vItem2 = pOutfit2:GetItem(vAlternateSlotName)

			if vInventoryCache:ItemsAreSame(vItem1, vItem2) then
				-- do nothing
			else
				return false
			end
		else
			return false
		end
	end

	return true
end

function Outfitter:GetNewItemsOutfit(pPreviousOutfit)
	-- Get the current outfit and the list
	-- of equippable items

	self.CurrentInventoryOutfit = self:GetInventoryOutfit(self.CurrentInventoryOutfit)

	local vInventoryCache = self:GetInventoryCache()

	-- Create a temporary outfit from the differences

	local vNewItemsOutfit = self:NewEmptyOutfit()
	local vOutfitHasItems = false

	for _, vInventorySlot in ipairs(self.cSlotNames) do
		local vCurrentItem = self.CurrentInventoryOutfit:GetItem(vInventorySlot)
		local vPreviousItem = pPreviousOutfit:GetItem(vInventorySlot)
		local vSkipSlot = false

		if vInventorySlot == "SecondaryHandSlot" then
			--local vMainHandItem = pPreviousOutfit:GetItem("MainHandSlot") xysis00
			local vMainHandItem = self.CurrentInventoryOutfit:GetItem("MainHandSlot")

			if not vMainHandItem then
				--self:DebugMessage("MainHandItem is nil")
				--self:DebugTable(pPreviousOutfit:GetItems(), "Items")
			end

			if self:ItemUsesBothWeaponSlots(vMainHandItem) then
				vSkipSlot = true
			end
		end

		if not vSkipSlot
		and not vInventoryCache:InventorySlotContainsItem(vInventorySlot, vPreviousItem) then
			if self.Debug.NewItems then
				self:DebugMessage("New item in slot %s", tostring(vInventorySlot))
				self:DebugTable(vCurrentItem, "NewItem", 1)
			end

			vNewItemsOutfit:SetItem(vInventorySlot, vCurrentItem)
			vOutfitHasItems = true
		end
	end

	if not vOutfitHasItems then
		return nil
	end

	return vNewItemsOutfit, self.CurrentInventoryOutfit
end

function Outfitter:UpdateTemporaryOutfit(pNewItemsOutfit)
	-- Just return if nothing has changed

	if not pNewItemsOutfit then
		return
	end

	-- Merge the new items with an existing temporary outfit

	local vTemporaryOutfit = Outfitter.OutfitStack:GetTemporaryOutfit()
	local vUsingExistingTempOutfit = false

	if vTemporaryOutfit then
		local vNewItems = pNewItemsOutfit:GetItems()

		for vInventorySlot, vItem in pairs(vNewItems) do
			vTemporaryOutfit:SetItem(vInventorySlot, vItem)
		end

		vUsingExistingTempOutfit = true

	-- Otherwise add the new items as the temporary outfit

	else
		vTemporaryOutfit = pNewItemsOutfit
	end

	-- Subtract out items which are expected to be in the outfit

	local vExpectedOutfit = self:GetExpectedOutfit(vTemporaryOutfit)

	self:SubtractOutfit(vTemporaryOutfit, vExpectedOutfit)

	if vTemporaryOutfit:IsEmpty() then
		if vUsingExistingTempOutfit then
			self:RemoveOutfit(vTemporaryOutfit)
		end
	else
		if not vUsingExistingTempOutfit then
			Outfitter.OutfitStack:AddOutfit(vTemporaryOutfit)
		end
	end

	-- Add the new items to the current compiled outfit

	local vNewItems = pNewItemsOutfit:GetItems()

	if self.Debug.EquipmentChanges then
		self:DebugMessage("Adding new items to temporary outfit")
		self:DebugTable(vNewItems, "NewItems", 2)
	end

	for vInventorySlot, vItem in pairs(vNewItems) do
		Outfitter.ExpectedOutfit:SetItem(vInventorySlot, vItem)
	end
end

function Outfitter:SetSlotEnable(pSlotName, pEnable)
	if not self.SelectedOutfit then
		return
	end

	if pEnable then
		Outfitter:DebugMessage("Enabling slot "..pSlotName)
		self.SelectedOutfit:SetInventoryItem(pSlotName)
	else
		self.SelectedOutfit:RemoveItem(pSlotName)
	end

	self.DisplayIsDirty = true
end

function Outfitter:GetOutfitByScriptID(pScriptID)
	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for _, vOutfit in ipairs(vOutfits) do
			if vOutfit.ScriptID == pScriptID then
				return vOutfit
			end
		end
	end

	return nil
end

function Outfitter:GetOutfitByName(name)
	for categoryID, outfits in pairs(self.Settings.Outfits) do
		for _, outfit in ipairs(outfits) do
			if outfit.Name == name then
				return outfit
			end
		end
	end
	return nil
end

Outfitter.AuraStates =
{
	Dining = false,
	GhostWolf = false,
	Feigning = false,
	Evocate = false,
	Monkey = false,
	Hawk = false,
	Cheetah = false,
	Pack = false,
	Beast = false,
	Wild = false,
	Viper = false,
	Dragonhawk = false,
	Prowl = false,
}

function Outfitter:GetPlayerAuraStates()
	local vBuffIndex = 1

	for vKey, _ in pairs(self.AuraStates) do
		self.AuraStates[vKey] = false
	end

	while true do
		local vName, vTexture, _, _, _, _, _, _, _, vSpellID = UnitBuff("player", vBuffIndex) --local vName, _, vTexture, _, _, _, _, _, _, _, vSpellID = UnitBuff("player", vBuffIndex)

		if not vName then
			return self.AuraStates
		end

		--

		local vSpecialID = Outfitter.cAuraIconSpecialID[vName]

		if not vSpecialID then
			vSpecialID = Outfitter.cAuraIconSpecialID[vTexture]
		end

		if not vSpecialID then
			vSpecialID = self.cSpellIDToSpecialID[vSpellID]
		end

		if vSpecialID then
			self.AuraStates[vSpecialID] = true
		end

		vBuffIndex = vBuffIndex + 1
	end
end

function Outfitter:GetBuffTooltipText(pBuffIndex)
	local tooltip = self.TooltipLib:SharedTooltip()
	tooltip:ClearLines()
	tooltip:SetUnitBuff("player", pBuffIndex)

	if not tooltip:IsShown() then
		return
	end

	-- Find the first two text lines
	local tooltipName = tooltip:GetName()
	local textLeft1 = _G[tooltipName.."TextLeft1"]
	local textLeft2 = _G[tooltipName.."TextLeft2"]

	-- Retrieve the first line if it's shown
	local text1
	if textLeft1:IsShown() then
		text1 = textLeft1:GetText()
	end -- if IsShown

	-- Retrieve the second line if it's shown
	local text2
	if OutfitterTooltipTextLeft2:IsShown() then
		text2 = textLeft2:GetText()
	end -- if IsShown

	return text1, text2
end

function Outfitter:UpdateSwimming()
	self:BeginEquipmentUpdate()

	self.EventLib:DispatchEvent("TIMER")

	self:UpdateMountedState()

	local vSwimming = false

	if IsSwimming() then
		vSwimming = true
	end

	if not self.SpecialState.Swimming then
		self.SpecialState.Swimming = false
	end

	self:SetSpecialOutfitEnabled("Swimming", vSwimming)
	self:EndEquipmentUpdate()
end

function Outfitter:UnitAuraChanged(pEvent, pUnitID)
	if pUnitID ~= "player" then
		return
	end

	if self.InCombat then
		self.SchedulerLib:ScheduleUniqueTask(2.0, self.UpdateAuraStates, self)
	else
		self:UpdateAuraStates()
	end
end

function Outfitter:UpdateAuraStates()
	self:BeginEquipmentUpdate()

	-- Check for special aura outfits

	local vAuraStates = self:GetPlayerAuraStates()

	for vSpecialID, vIsActive in pairs(vAuraStates) do
		if vSpecialID == "Feigning" then
			self.IsFeigning = vIsActive
		end

		if not Outfitter.SpecialState[vSpecialID] then
			self.SpecialState[vSpecialID] = false
		end

		-- Don't equip the dining outfit if health and mana are almost topped up

		if vSpecialID == "Dining"
		and vIsActive
		and self:PlayerIsFull() then
			vIsActive = false
		end

		-- Update the state

		self:SetSpecialOutfitEnabled(vSpecialID, vIsActive)
	end

	self:UpdateMountedState()

	self:EndEquipmentUpdate()

	-- Update shapeshift state on aura change too
	-- NOTE: Currently (WoW client 2.3) the shapeshift info isn't
	-- always up-to-date when the AURA event comes in, so update
	-- the shapeshift state after about 1 frame to allow the state to
	-- synch (Changed to .5 sec)

	self.SchedulerLib:ScheduleUniqueTask(0.5, self.UpdateShapeshiftState, self)
end

function Outfitter:UpdateMountedState()
	local vRiding = IsMounted() and not UnitOnTaxi("player")

	self:SetSpecialOutfitEnabled("Riding", vRiding)
end

function Outfitter:UpdateShapeshiftState()
	-- During loading screens, shapeshift/DK-Presence auras disappear briefly.
	-- depending on outfit setup, this may remove some or all the player's gear
	-- and then put it right back on when aura reappears, but this leaves them
	-- at low health or mana etc. due to the stat loss of not having their gear on.
	-- so we defer shapeshift checks until loading screen stuff is completed.
	if self.Suspended then
		self.SchedulerLib:ScheduleUniqueTask(0.1, self.UpdateShapeshiftState, self)
		return
	end

	self:BeginEquipmentUpdate()

	if not self.Settings.ShapeshiftIndexInfo then
		self.Settings.ShapeshiftIndexInfo = {}
	end

	-- Search for the active shapeshift form, plus while searching deactivate any forms which aren't the active one
	local activeForm
	local numForms = GetNumShapeshiftForms()
	--self:DebugMessage("Outfitter:UpdateShapeshiftState(): %d forms", numForms)
	for index = 1, numForms do
		local texture, isActive, isCastable, shapeshiftID = GetShapeshiftFormInfo(index)
		local _

		--self:DebugMessage("%s: %s texture = %s %s", tostring(index), tostring(shapeshiftID), tostring(texture), isActive and "ACTIVE" or "not active")

		local shapeshiftInfo = self.cShapeshiftIDInfo[shapeshiftID]

		if shapeshiftInfo then
			self.Settings.ShapeshiftIndexInfo[index] = shapeshiftInfo
		else
			shapeshiftInfo = self.Settings.ShapeshiftIndexInfo[index]
		end

		if shapeshiftInfo then
			if not isActive then
				self:UpdateShapeshiftInfo(shapeshiftInfo, false)
			else
				activeForm = shapeshiftInfo
			end
		end
	end

	-- Substitute the druid caster pseudo-form if necessary or deactivate it
	-- if it's not
	if self.PlayerClass == "DRUID" then
		if not activeForm then
			activeForm = self.cShapeshiftIDInfo.CasterForm
		else
			self:UpdateShapeshiftInfo(self.cShapeshiftIDInfo.CasterForm, false)
		end
	end

	-- Activate the new form
	if activeForm then
		self:UpdateShapeshiftInfo(activeForm, true)
	end

	self:EndEquipmentUpdate()
end

function Outfitter:UpdateShapeshiftInfo(pShapeshiftInfo, pIsActive)
	-- Ensure a proper boolean

	if pIsActive then
		pIsActive = true
	else
		pIsActive = false
	end

	--

	--Outfitter:DebugMessage("Outfitter:UpdateShapeshiftInfo(%s, %s)", tostring(pShapeshiftInfo.ID), tostring(pIsActive))
	--Outfitter:DebugStack()

	if self.SpecialState[pShapeshiftInfo.ID] == nil then
		self.SpecialState[pShapeshiftInfo.ID] = self:WearingOutfitWithScriptID(pShapeshiftInfo.ID)
	end

	if self.SpecialState[pShapeshiftInfo.ID] ~= pIsActive then
		if pIsActive and pShapeshiftInfo.MaybeInCombat then
			self.MaybeInCombat = true
		end

		self:SetSpecialOutfitEnabled(pShapeshiftInfo.ID, pIsActive)
	end
end

function Outfitter:SetSpecialOutfitEnabled(pSpecialID, pEnable)
	-- Ensure a proper boolean

	if pEnable then
		pEnable = true
	else
		pEnable = false
	end

	if self.SpecialState[pSpecialID] == pEnable then
		return
	end

	-- Suspend or resume monitoring the player health
	-- if the dining outfit is being changed

	if pSpecialID == "Dining" and pEnable then
		self.EventLib:RegisterEvent("UNIT_HEALTH", self.UnitHealthOrManaChanged, self, true) -- Register as a blind event handler
	else
		self.EventLib:UnregisterEvent("UNIT_HEALTH", self.UnitHealthOrManaChanged, self)
	end

	--

	self.SpecialState[pSpecialID] = pEnable

	-- Dispatch the special ID events

	local vEvents = self.cSpecialIDEvents[pSpecialID]

	if vEvents then
		if pEnable then
			self.EventLib:DispatchEvent(vEvents.Equip)
		else
			self.EventLib:DispatchEvent(vEvents.Unequip)
		end
	else
		self:ErrorMessage("No events found for "..pSpecialID)
	end
end

function Outfitter:WearingOutfitWithScriptID(pSpecialID)
	for vIndex, vOutfit in ipairs(self.OutfitStack.Outfits) do
		if vOutfit.ScriptID == pSpecialID then
			return true, vIndex
		end
	end
end

function Outfitter:ScheduleUpdateZone()
	self.SchedulerLib:RescheduleTask(0.01, self.UpdateZone, self)
end

function Outfitter:UpdateZone()
	local vCurrentZone = GetZoneText()
	local name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceMapID = GetInstanceInfo()

	-- Just return if the zone isn't changing
	if vCurrentZone == self.CurrentZone then
		return
	end

	self.CurrentZone = vCurrentZone
	self.CurrentZoneIDs = self:GetCurrentZoneIDs(self.CurrentZoneIDs)

	self:BeginEquipmentUpdate()

	--

	for _, vSpecialID in ipairs(self.cZoneSpecialIDs) do
		local vIsActive = self.CurrentZoneIDs[vSpecialID] == true
		local vCurrentIsActive = self.SpecialState[vSpecialID]

		if vCurrentIsActive == nil then
			vCurrentIsActive = self:WearingOutfitWithScriptID(vSpecialID)
			self.SpecialState[vSpecialID] = vCurrentIsActive
		end

		self:SetSpecialOutfitEnabled(vSpecialID, vIsActive)
	end

	self:EndEquipmentUpdate()
end

function Outfitter:GetCurrentZoneIDs(pRecycleTable)
	local vZoneIDs = self:RecycleTable(pRecycleTable)

	local vZoneSpecialIDMap = self.cZoneSpecialIDMap[self.CurrentZone]

	if not vZoneSpecialIDMap then
		vZoneSpecialIDMap = self.cZoneSpecialIDMap[GetRealZoneText()]
	end

	local vPVPType, vIsArena, vFactionName = GetZonePVPInfo()

	if vZoneSpecialIDMap then
		for _, vZoneSpecialID in ipairs(vZoneSpecialIDMap) do
			if vZoneSpecialID ~= "City" or vPVPType ~= "hostile" then
				vZoneIDs[vZoneSpecialID] = true
			end
		end
	end

	local inInstance, instanceType = IsInInstance()
	vZoneIDs.Battleground = instanceType == "pvp" or instanceType == "arena"
	return vZoneIDs
end

function Outfitter:InZoneType(pZoneType)
	return self.CurrentZoneIDs[pZoneType] == true
end

function Outfitter:InBattlegroundZone()
	local name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceMapID = GetInstanceInfo()
	return instanceType == "pvp" or instanceType == "arena"
end

function Outfitter:SetAllSlotEnables(pEnable)
	if pEnable then
		self.SelectedOutfit:EnableAllSlots()
	else
		self.SelectedOutfit:DisableAllSlots()
	end

	self:OutfitSettingsChanged(self.SelectedOutfit)
	self:Update(true)
end

function Outfitter:OutfitSettingsChanged(pOutfit)
	if not pOutfit then
		return
	end

	local vTargetCategoryID = pOutfit:CalculateOutfitCategory()

	if pOutfit.CategoryID ~= vTargetCategoryID then
		local vOutfitCategoryID, vOutfitIndex = self:FindOutfit(pOutfit)

		if not vOutfitCategoryID then
			self:ErrorMessage(pOutfit:GetName().." not found in outfit list")
			return
		end

		if vOutfitCategoryID ~= pOutfit.CategoryID then
			self:DebugMessage("OutfitSettingsChanged: "..pOutfit:GetName().." says it's in "..pOutfit.CategoryID.." but it's in "..vOutfitCategoryID)
		end

		table.remove(self.Settings.Outfits[vOutfitCategoryID], vOutfitIndex)

		self:AddOutfit(pOutfit)
	end

	self.DisplayIsDirty = true

	self:DispatchOutfitEvent("EDIT_OUTFIT", pOutfit:GetName(), pOutfit)
end

function Outfitter:DeleteOutfit(pOutfit)
	local vWearingOutfit = self:WearingOutfit(pOutfit)

	-- Deselect the outfit

	if pOutfit == self.SelectedOutfit then
		self:ClearSelection()
	end

	-- Remove the outfit if it's being worn

	self:RemoveOutfit(pOutfit)
	self:DeactivateScript(pOutfit)

	local vOutfitCategoryID, vOutfitIndex = self:FindOutfit(pOutfit)

	if not vOutfitCategoryID then
		return
	end

	-- Delete the outfit

	table.remove(self.Settings.Outfits[vOutfitCategoryID], vOutfitIndex)

	pOutfit:Delete()

	--

	self.DisplayIsDirty = true

	self:DispatchOutfitEvent("DELETE_OUTFIT", pOutfit:GetName(), pOutfit)
end

function Outfitter:AddOutfit(pOutfit)
	local vCategoryID

	vCategoryID = pOutfit:CalculateOutfitCategory()

	if not self.Settings.Outfits then
		self.Settings.Outfits = {}
	end

	if not self.Settings.Outfits[vCategoryID] then
		self.Settings.Outfits[vCategoryID] = {}
	end

	table.insert(self.Settings.Outfits[vCategoryID], pOutfit)
	pOutfit.CategoryID = vCategoryID

	self.DisplayIsDirty = true

	self:DispatchOutfitEvent("ADD_OUTFIT", pOutfit:GetName(), pOutfit)

	return vCategoryID
end

function Outfitter:SlotEnableClicked(pCheckbox, pButton)
	-- If the user is attempting to drop an item put it in the slot for them

	if CursorHasItem() then
		PickupInventoryItem(self.cSlotIDs[pCheckbox.SlotName])
		return
	end

	--

	local vChecked = pCheckbox:GetChecked()

	if pCheckbox.IsUnknown then
		pCheckbox.IsUnknown = false
		pCheckbox:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")
		vChecked = true
	end

	self:SetSlotEnable(pCheckbox.SlotName, vChecked)
	self:OutfitSettingsChanged(self.SelectedOutfit)
	self:Update(true)
end

function Outfitter:FindMultipleItemLocation(pItems, pInventoryCache)
	for vListIndex, vListItem in ipairs(pItems) do
		local vItem = pInventoryCache:FindItemOrAlt(vListItem)

		if vItem then
			return vItem, vListItem
		end
	end

	return nil, nil
end

function Outfitter:FindAndAddItemsToOutfit(pOutfit, pSlotName, pItems, pInventoryCache)
	vItemLocation, vItem = self:FindMultipleItemLocation(pItems, pInventoryCache)

	if vItemLocation then
		local vInventorySlot = pSlotName

		if not vInventorySlot then
			vInventorySlot = vItemLocation.ItemSlotName
		end

		pOutfit:AddItem(vInventorySlot, vItem)
	end
end

function Outfitter:IsInitialized()
	return self.Initialized
end

function Outfitter:InitializationCheck()
	-- Don't initialize for a short time after WoW comes up to allow
	-- time for WoW to load inventory, bags, talent trees, etc.

	self.SchedulerLib:RescheduleTask(1, self.Initialize, self)
end

function Outfitter:Initialize()
	if self.Initialized then
		return
	end

	-- Unregister the initialization events
	for vEventID, _ in pairs(self.cInitializationEvents) do
		self.EventLib:UnregisterEvent(vEventID, self.InitializationCheck, self)
	end

	-- Make sure they're not upgrading with a reloadui when there are new files
	if tonumber(GetAddOnMetadata("Outfitter", "X-ReloadTag")) ~= 2 then
		OutfitterMinimapButton:Hide() -- Remove access to Outfitter so more errors don't start coming up
		OutfitterButtonFrame:Hide()
		StaticPopup_Show("OUTFITTER_CANT_RELOADUI")
		return
	end

	-- Get the basic player info
	self.PlayerName = UnitName("player")
	self.RealmName = GetRealmName()
	local _, vPlayerClass = UnitClass("player")
	self.PlayerClass = vPlayerClass

	-- Swap in the Horde Lance for the Alliance Lance mapping
	if UnitFactionGroup("player") == "Horde" then
		Outfitter.cItemAliases[46106] = 46070 -- Argent Lance -> Horde Lance
	end

	-- Initialize the global settings if they didn't get loaded
	if not gOutfitter_GlobalSettings then
		self:InitializeGlobalSettings()
	end

	-- Refuse to load for select characters
	if (self.BannedCharacters[self.RealmName]
	and self.BannedCharacters[self.RealmName][self.PlayerName])
	or gOutfitter_GlobalSettings.Banned then
		gOutfitter_GlobalSettings.Banned = true
		OutfitterMinimapButton:Hide()
		OutfitterButtonFrame:Hide()
		self:ErrorMessage("Your character is banned from Outfitter.  Use something else for your gear management.")
		return
	end

	-- Hook onto C_PetJournal.SummonPetByGUID so that the cooldown can be monitored
	--hooksecurefunc(C_PetJournal, "SummonPetByGUID", function () self.SummonPetByGUIDTime = GetTime() end)
	self.SummonPetByGUIDTime = 100

	-- Initialize the main UI tabs
	self._SidebarWindowFrame.Construct(OutfitterFrame)

	PanelTemplates_SetNumTabs(OutfitterFrame, #self.cPanelFrames)
	OutfitterFrame.selectedTab = self.CurrentPanel
	PanelTemplates_UpdateTabs(OutfitterFrame)

	-- Install the /outfit command handler
	SlashCmdList.OUTFITTER = function (pCommand) Outfitter:ExecuteCommand(pCommand) end
	SLASH_OUTFITTER1 = "/outfitter"

	if not SlashCmdList.UNEQUIP then
		SlashCmdList.UNEQUIP = self.UnequipItemByName
		SLASH_UNEQUIP1 = "/unequip"
	end

	-- Initialize the slot ID map
	self.cSlotIDs = {}
	self.cSlotIDToInventorySlot = {}
	for _, vInventorySlot in ipairs(self.cSlotNames) do
		local vSlotID = GetInventorySlotInfo(vInventorySlot)
		self.cSlotIDs[vInventorySlot] = vSlotID
		self.cSlotIDToInventorySlot[vSlotID] = vInventorySlot
	end

	-- Initialize the scripts
	Outfitter:InitializeScripts()

	-- Initialize the settings
	if not gOutfitter_Settings then
		self:InitializeSettings()
	else
		self.Settings = gOutfitter_Settings
	end

	-- Initialize the outfits
	self.CurrentOutfit = self:GetInventoryOutfit()

	if not self.Settings.Outfits then
		self:InitializeOutfits()
	end

	self:InstallDefaultSpecializationIcons()
	self:AttachOutfitMethods()
	self:CheckDatabase()

	-- Initialize the outfit stack

	self.OutfitStack:Initialize()

	-- Clean up any recent complete outfits which don't exist as
	-- well as duplicate entries

	local vUsedRecentNames = {}

	for vIndex = #self.Settings.RecentCompleteOutfits, 1, -1 do
		local vName = self.Settings.RecentCompleteOutfits[vIndex]

		if not self:FindOutfitByName(vName)
		or vUsedRecentNames[vName] then
			table.remove(self.Settings.RecentCompleteOutfits, vIndex)
		else
			vUsedRecentNames[vName] = true
		end
	end

	-- Set the minimap button

	if self.Settings.Options.HideMinimapButton then
		OutfitterMinimapButton:Hide()
	else
		OutfitterMinimapButton:Show()
	end

	if not self.Settings.Options.MinimapButtonAngle
	and not self.Settings.Options.MinimapButtonX then
		self.Settings.Options.MinimapButtonAngle = -1.5708
	end

	if self.Settings.Options.MinimapButtonAngle then
		OutfitterMinimapButton:SetPositionAngle(self.Settings.Options.MinimapButtonAngle)
	else
		OutfitterMinimapButton:SetPosition(self.Settings.Options.MinimapButtonX, self.Settings.Options.MinimapButtonY)
	end

	-- Move the Blizzard UI over a bit
	--PaperDollItemsFrame:SetPoint("BOTTOMRIGHT", CharacterFrameInsetRight, "TOPRIGHT", -30, -1) --Miv
	--OutfitterMainFrame:SetPoint("TOPRIGHT", PaperDollItemsFrame, "TOPRIGHT", -20, -1)
	--OutfitterFrame:SetPoint("TOPRIGHT", PaperDollItemsFrame, "TOPRIGHT", -20, -1)
	--OutfitterButtonFrame:SetPoint("TOPRIGHT", OutfitterMainFrame, "TOPRIGHT", 1000, 0)
	-- Initialize player state

	self.SpiritRegenEnabled = true

	-- Done initializing

	self.Initialized = true

	-- Make sure the outfit state is good

	self:SetSpecialOutfitEnabled("Riding", false)
	self:SetSpecialOutfitEnabled("Spirit", false)
	self:UpdateAuraStates()

	-- Start listening for events

	self.EventLib:RegisterEvent("PLAYER_ENTERING_WORLD", self.SchedulePlayerEnteringWorld, self)
	self.EventLib:RegisterEvent("PLAYER_LEAVING_WORLD", self.PlayerLeavingWorld, self)

	-- For monitoring mounted and dining states

	self.EventLib:RegisterEvent("UNIT_AURA", self.UnitAuraChanged, self)

	--hooksecurefunc("ShapeshiftBar_UpdateState", function () Outfitter.SchedulerLib:ScheduleUniqueTask(0.01, self.UpdateShapeshiftState, self) end)

	-- For monitoring plaguelands and battlegrounds

	self.EventLib:RegisterEvent("ZONE_CHANGED_NEW_AREA", self.ScheduleUpdateZone, self)
	self.EventLib:RegisterEvent("ZONE_CHANGED", self.ScheduleUpdateZone, self)
	self.EventLib:RegisterEvent("ZONE_CHANGED_INDOORS", self.ScheduleUpdateZone, self)

	-- For monitoring player combat state

	self.EventLib:RegisterEvent("PLAYER_REGEN_ENABLED", self.RegenEnabled, self)
	self.EventLib:RegisterEvent("PLAYER_REGEN_DISABLED", self.RegenDisabled, self)

	-- For monitoring player dead/alive state

	self.EventLib:RegisterEvent("PLAYER_DEAD", self.PlayerDead, self)
	self.EventLib:RegisterEvent("PLAYER_ALIVE", self.PlayerAlive, self)
	self.EventLib:RegisterEvent("PLAYER_UNGHOST", self.PlayerAlive, self)

	self.EventLib:RegisterEvent("UNIT_INVENTORY_CHANGED", self.UnitInventoryChanged, self, true) -- Register as a blind event handler (no event id param)
	self.EventLib:RegisterCustomEvent("OUTFITTER_INVENTORY_CHANGED", self.InventoryChanged, self, true) -- Register as a blind event handler (no event id param)

	-- For indicating which outfits are missing items

	self.EventLib:RegisterEvent("BAG_UPDATE", self.BagUpdate, self)
	self.EventLib:RegisterEvent("PLAYERBANKSLOTS_CHANGED", self.BankSlotsChanged, self)

	-- For monitoring bank bags

	self.EventLib:RegisterEvent("BANKFRAME_OPENED", self.BankFrameOpened, self)
	self.EventLib:RegisterEvent("BANKFRAME_CLOSED", self.BankFrameClosed, self)

	-- For monitoring void storage

	--self.EventLib:RegisterEvent("VOID_STORAGE_OPEN", self.VoidStorageFrameOpened, self)
	--self.EventLib:RegisterEvent("VOID_STORAGE_CLOSE", self.VoidStorageFrameClosed, self)

	-- For unequipping the dining outfit

	self.EventLib:RegisterEvent("UNIT_MANA", self.UnitHealthOrManaChanged, self, true) -- Register as a blind event handler (no event id param)

	-- For monitoring spellcasts

--[[
	for _, vEventID in ipairs({
		"UNIT_SPELLCAST_CHANNEL_START",
		"UNIT_SPELLCAST_CHANNEL_STOP",
		"UNIT_SPELLCAST_CHANNEL_UPDATE",
		"UNIT_SPELLCAST_DELAYED",
		"UNIT_SPELLCAST_FAILED",
		"UNIT_SPELLCAST_FAILED_QUIET",
		"UNIT_SPELLCAST_INTERRUPTED",
		"UNIT_SPELLCAST_SENT",
		"UNIT_SPELLCAST_START",
		"UNIT_SPELLCAST_STOP",
		"UNIT_SPELLCAST_SUCCEEDED",
		"UNIT_SPELLMISS"
	}) do
		self.EventLib:RegisterEvent(vEventID, self.UnitSpellcastDebug, self)
	end
]]

	self.EventLib:RegisterEvent("UNIT_SPELLCAST_SENT", self.UnitSpellcastSent, self)
	self.EventLib:RegisterEvent("UNIT_SPELLCAST_START", self.UnitSpellcastSent, self)

	self.EventLib:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED", self.UnitSpellcastStop, self)
	self.EventLib:RegisterEvent("UNIT_SPELLCAST_STOP", self.UnitSpellcastStop, self)

	self.EventLib:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START", self.UnitSpellcastChannelStart, self)
	self.EventLib:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP", self.UnitSpellcastChannelStop, self)

	self.EventLib:RegisterEvent("UNIT_SPELLCAST_FAILED", self.UnitSpellcastStop, self)
	self.EventLib:RegisterEvent("UNIT_SPELLCAST_FAILED_QUIET", self.UnitSpellcastStop, self)
	self.EventLib:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", self.UnitSpellcastStop, self)

	--

	self.EventLib:RegisterEvent("CHARACTER_POINTS_CHANGED", self.TalentsChanged, self)
	--self.EventLib:RegisterEvent("PLAYER_TALENT_UPDATE", self.TalentsChanged, self)

	self:TalentsChanged()

	-- Patch GameTooltip so we can monitor hide/show events

	self:HookScript(GameTooltip, "OnShow", self.GameToolTip_OnShow)
	self:HookScript(GameTooltip, "OnHide", self.GameToolTip_OnHide)

	-- Patch MobInfo tooltip since it replaces the GameToolTip (blech)

	if MI2_TooltipFrame then
		self:HookScript(MI2_TooltipFrame, "OnShow", self.GameToolTip_OnShow)
		self:HookScript(MI2_TooltipFrame, "OnHide", self.GameToolTip_OnHide)
	end

	-- Synchronize with the Equipment Manager
	self:StartMonitoringEM()

	--

	self:DispatchOutfitEvent("OUTFITTER_INIT")

	self.SchedulerLib:ScheduleUniqueRepeatingTask(0.5, self.UpdateSwimming, self, nil, "Outfitter:UpdateSwimming")

	-- Activate all outfit scripts
	if not self.Settings.Options.DisableAutoSwitch then
		self:ActivateAllScripts()
	end

	-- Install the "Used by outfits" tooltip feature
	hooksecurefunc(GameTooltip, "SetBagItem", self.GameTooltip_SetBagItem)
	hooksecurefunc(GameTooltip, "SetInventoryItem", self.GameTooltip_SetInventoryItem)
	hooksecurefunc(GameTooltip, "SetHyperlink", self.GameTooltip_SetHyperlink)

	-- Install the item compare tooltips
	if not self.Settings.Options.DisableItemComparisons then
		self.ExtendedCompareTooltip = self:New(Outfitter._ExtendedCompareTooltip)
	end

	-- Fire things up with a simulated entrance
	self:SchedulePlayerEnteringWorld()
end

function Outfitter:StartMonitoringEM()
	--self.EventLib:RegisterEvent("EQUIPMENT_SETS_CHANGED", self.SynchronizeEM, self)
end

function Outfitter:StopMonitoringEM()
	--self.EventLib:UnregisterEvent("EQUIPMENT_SETS_CHANGED", self.SynchronizeEM, self) --Miv
end

-- Blizzard added icon numbers in patch 6 but no API for mapping between the number and the path, so create a texture to use for doing the mapping
function Outfitter:ConvertTextureIDToPath(pID)
	if type(pID) ~= "number" then
		return pID
	end

	if not self.IDConversionTexture then
		self.IDConversionTexture = OutfitterFrame:CreateTexture(nil, "BACKGROUND")
		self.IDConversionTexture:Hide()
	end

	self.IDConversionTexture:SetTexture(pID)
	return self.IDConversionTexture:GetTexture()
end

function Outfitter:ConvertTextureIDToString(pID)
	if type(pID) ~= "number" then
		return pID
	end

	local vPath = self:ConvertTextureIDToPath(pID)
	return string.match(vPath, ".-([^\\]-)$")
end

function Outfitter:InitializeSettings()
	gOutfitter_Settings =
	{
		Version = 22,
		Options = {},
		LastOutfitStack = {},
		LayerIndex = {},
		RecentCompleteOutfits = {},
	}

	self.Settings = gOutfitter_Settings

	self.OutfitBar:InitializeSettings()
end

function Outfitter:InitializeGlobalSettings()
	gOutfitter_GlobalSettings =
	{
		Version = 1,
		SavedScripts = {},
	}
end

function Outfitter:AttachOutfitMethods()
	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit.StoredInEM then
				local equipmentSetID = C_EquipmentSet.GetEquipmentSetID(vOutfit.Name)
				if equipmentSetID then
					vOutfit.equipmentSetID = equipmentSetID
				end

				setmetatable(vOutfit, Outfitter._OutfitMetaTableEM)
			else
				setmetatable(vOutfit, Outfitter._OutfitMetaTable)
			end
		end
	end
end

function Outfitter:SynchronizeEM()
	local equipmentSetIDs = "0"

	-- Mark all the EM outfits as unused
	for vCategoryID, outfits in pairs(self.Settings.Outfits) do
		for vIndex, outfit in ipairs(outfits) do
			if outfit.StoredInEM then
				outfit.Unused = true
			end
		end
	end

	-- If NumEquipmentSets is zero, assume that the EM is flaking out
	-- and save the EM-based outfits so they can be restored if the EM
	-- happens to straighten up later

	if #equipmentSetIDs == 0 then
		if not self.Settings.PreservedEMOutfits then
			self.Settings.PreservedEMOutfits = {}
		end

		for vCategoryID, outfits in pairs(self.Settings.Outfits) do
			for vIndex, outfit in ipairs(outfits) do
				if outfit.StoredInEM then
					self.Settings.PreservedEMOutfits[outfit.Name] = outfit
				end
			end
		end
	end

	-- Scan the EM outfits

	--[[for _, equipmentSetID in ipairs(equipmentSetIDs) do
		local name = C_EquipmentSet.GetEquipmentSetInfo(equipmentSetID)
		local outfit = self:FindEMOutfitByName(name)

		-- If the outfit is missing, see if it can be restored from
		-- the preserved list

		if not outfit
		and self.Settings.PreservedEMOutfits then
			outfit = self.Settings.PreservedEMOutfits[name]

			if outfit then
				setmetatable(outfit, Outfitter._OutfitMetaTableEM)
				outfit.equipmentSetID = equipmentSetID

				self:AddOutfit(outfit)

				self:ActivateScript(outfit)
				if not outfit.equipmentSetID then
					Outfitter:TestMessage("no equipmentsetID 1")
				end
			end
		end

		if not outfit then
			outfit =
			{
				Name = name,
				StoredInEM = true,
				equipmentSetID = equipmentSetID,
				Items = {},
			}

			setmetatable(outfit, Outfitter._OutfitMetaTableEM)
			self:AddOutfit(outfit)

			if not outfit.equipmentSetID then
				Outfitter:TestMessage("no equipmentsetID 2")
			end
		else
			outfit.Unused = nil
		end
	end--]] --Miv

	-- Delete unused outfits

	for vCategoryID, outfits in pairs(self.Settings.Outfits) do
		local vNumOutfits = #outfits
		local vIndex = 1

		while vIndex <= vNumOutfits do
			local outfit = outfits[vIndex]

			if outfit.StoredInEM and outfit.Unused then
				self:DeactivateScript(outfit)

				table.remove(outfits, vIndex)
				vNumOutfits = vNumOutfits - 1
			else
				vIndex = vIndex + 1
			end
		end
	end

	-- If NumEquipmentSets is not zero, assume that the EM is working correctly
	-- and get rid of any preserved outfits

	if #equipmentSetIDs > 0 then
		self.Settings.PreservedEMOutfits = nil
	end

	-- Done

	self.DisplayIsDirty = true
end

function Outfitter:FindEMOutfitByName(pName)
	local vLowerName = pName:lower()

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit.StoredInEM
			and vOutfit.Name:lower() == vLowerName then
				return vOutfit
			end
		end
	end
end

function Outfitter:InitializeOutfits()
	-- Cache the inventory
	local vOutfit, vItemLocation, vItem
	local vInventoryCache = self:GetInventoryCache()

	-- Create the outfit categories
	self.Settings.Outfits = {}
	for vCategoryIndex, vCategoryID in ipairs(Outfitter.cCategoryOrder) do
		self.Settings.Outfits[vCategoryID] = {}
	end

	-- Load the EM outfits
	self:SynchronizeEM()

	-- Create the normal outfit using the current
	-- inventory and set it as the currently equipped outfit
	vOutfit = self:FindOutfitByName(Outfitter.cNormalOutfit)
	if not vOutfit then
		vOutfit = self:GetInventoryOutfit(Outfitter.cNormalOutfit)
		self:AddOutfit(vOutfit)
	end
	self.Settings.LastOutfitStack = {{Name = Outfitter.cNormalOutfit}}
	Outfitter.OutfitStack.Outfits = {vOutfit}

	-- Create the naked outfit
	vOutfit = self:NewNakedOutfit(Outfitter.cNakedOutfit)
	self:AddOutfit(vOutfit)

	-- Generate the smart outfits
	for vSmartIndex, vSmartOutfit in ipairs(Outfitter.cSmartOutfits) do
		vOutfit = self:GenerateSmartOutfit(vSmartOutfit.Name, vSmartOutfit.StatID, vInventoryCache)

		if vOutfit then
			vOutfit.ScriptID = vSmartOutfit.ScriptID
			self:AddOutfit(vOutfit)
		end
	end

	self:InitializeSpecialOccasionOutfits()
end

function Outfitter:CreateEmptySpecialOccasionOutfit(pScriptID, pName, pAllowDuplicates)
	-- Return the existing outfit if duplicates aren't allowed
	vOutfit = self:GetOutfitByName(pName)
	if vOutfit and not pAllowDuplicates then
		-- Assign the script to the existing outfit if there isn't one already
		if not vOutfit.ScriptID then
			vOutfit.ScriptID = pScriptID
		end
		return vOutfit
	end

	-- Create the outfit
	vOutfit = self:NewEmptyOutfit(pName)
	vOutfit.ScriptID = pScriptID
	self:AddOutfit(vOutfit)

	-- Done
	return vOutfit
end

function Outfitter:InitializeSpecialOccasionOutfits()
	local vInventoryCache = self:GetInventoryCache()
	local vOutfit

	-- Create talent tree outfits
	self:InitializeTalentTreeOutfits()

	-- Create class-specific outfits
	self:InitializeClassOutfits()
end

function Outfitter:InstallDefaultSpecializationIcons() --miv
	local numSpecs = 1 --GetNumSpecializations()
	for specIndex = 1, numSpecs do
		--local _, specName, _, specIconID = GetSpecializationInfo(specIndex)
		--local scriptID = "SPECIALIZATION_"..specIndex
		Outfitter.OutfitBar.cDefaultScriptIcons["SPECIALIZATION_" .. 1] = "Interface\\ICONS\\INV_Misc_QuestionMark"
	end
end

function Outfitter:InitializeTalentTreeOutfits() --miv
	local playerClass = UnitClass("player")

	local numSpecs = 1 --GetNumSpecializations()
	for specIndex = 1, numSpecs do
		--local _, specName, _, specIconID = GetSpecializationInfo(specIndex)

		-- Done when the names run out
		if not specName then
			return
		end

		-- Create the outfit
		local scriptID = "SPECIALIZATION_"..specIndex
		local outfitName = playerClass..": "..specName
		local outfit = self:CreateEmptySpecialOccasionOutfit(scriptID, outfitName)
		outfit:SetIcon(specIconID)
	end
end

function Outfitter:InitializeClassOutfits()
	local vOutfits = self.cClassSpecialOutfits[Outfitter.PlayerClass]

	if not vOutfits then
		return
	end

	for vIndex, vOutfitInfo in ipairs(vOutfits) do
		self:CreateEmptySpecialOccasionOutfit(vOutfitInfo.ScriptID, vOutfitInfo.Name)
	end
end

Outfitter.cDeformat =
{
	s = "(.-)",
	d = "(-?[%d]+)",
	f = "(-?[%d%.]+)",
	g = "(-?[%d%.]+)",
	["%"] = "%%",
}

function Outfitter:ConvertFormatStringToSearchPattern(pFormat)
	local vFormat = pFormat:gsub(
			"[%[%]%.]",
			function (pChar) return "%"..pChar end)

	return vFormat:gsub(
			"%%[%-%d%.]-([sdgf%%])",
			self.cDeformat)
end

function Outfitter:FindTooltipLine(pTooltip, pText, pPlain)
	local vTooltipName = pTooltip:GetName()

	for vLineIndex = 1, 100 do
		local vLeftTextFrame = _G[vTooltipName.."TextLeft"..vLineIndex]

		if not vLeftTextFrame then
			break
		end

		local vLeftText = vLeftTextFrame:GetText()

		if vLeftText
		and vLeftText:find(pText, nil, pPlain) then
			return vLineIndex, vLeftTextFrame
		end
	end -- for vLineIndex
end

function Outfitter:CanEquipBagItem(pBagIndex, pBagSlotIndex)
	local vItemInvType = self:GetBagItemInvType(pBagIndex, pBagSlotIndex)

	-- Disabling minLevel check because new drops pre WoD are showing as minLevel 100 despite only requiring 90
	return Outfitter.cInvTypeToSlotName[vItemInvType] ~= nil
--	       and (not vItemMinLevel or UnitLevel("player") >= vItemMinLevel)
end

function Outfitter:ArrayIsEmpty(pArray)
	if not pArray then
		return true
	end

	return next(pArray) == nil
end

function Outfitter:GetScreenQuadrantFromCoordinates(x, y)
	local vertEdge, horizEdge = self:GetNearestFrameEdgesFromCoordinates(UIParent, x, y)
	return vertEdge..horizEdge
end

function Outfitter:GetNearestFrameEdgesFromCoordinates(frame, x, y)
	local horizCenter = 0.5 * (frame:GetLeft() + frame:GetRight())
	local vertCenter = 0.5 * (frame:GetTop() + frame:GetBottom())

	local isTop = y > vertCenter
	local isLeft = x < horizCenter

	return isTop and "TOP" or "BOTTOM", isLeft and "LEFT" or "RIGHT", isTop and "BOTTOM" or "TOP", isLeft and "RIGHT" or "LEFT"
end

----------------------------------------
Outfitter._NameOutfitDialog = {}
----------------------------------------

function Outfitter._NameOutfitDialog:New(pParent)
	return Outfitter:New(Outfitter.UIElementsLib._ModalDialogFrame, pParent, Outfitter._cNewOutfit, 315, 207)
end

function Outfitter._NameOutfitDialog:Construct(pParent)
	self:Hide()

	--self:SetTopLevel(true)
	self:SetFrameStrata("DIALOG")
	self:EnableMouse(true)

	-- Controls

	self.InfoSection = Outfitter:New(Outfitter.UIElementsLib._Section, self, Outfitter.cInfo)
	self.BuildSection = Outfitter:New(Outfitter.UIElementsLib._Section, self, Outfitter.cBuild)
	self.StatsSection = Outfitter:New(Outfitter.UIElementsLib._Section, self, Outfitter.cStats)

	self.Name = Outfitter:New(Outfitter.UIElementsLib._EditBox, self.InfoSection, Outfitter.cNameLabel, 40, 170)

	self.ScriptMenu = Outfitter:New(Outfitter.UIElementsLib._TitledDropDownMenuButton, self.InfoSection,
		function (menu, ...)
			self:ScriptMenuFunc(menu, ...)
		end)
	self.ScriptMenu:SetTitle(Outfitter.cAutomationLabel)

	self.EmptyOutfitCheckButton = Outfitter:New(Outfitter.UIElementsLib._CheckButton, self.BuildSection, Outfitter.cUseEmptyOutfit, true)
	self.ExistingOutfitCheckButton = Outfitter:New(Outfitter.UIElementsLib._CheckButton, self.BuildSection, Outfitter.cUseCurrentOutfit, true)
	self.GenerateOutfitCheckButton = Outfitter:New(Outfitter.UIElementsLib._CheckButton, self.BuildSection, Outfitter.cCreateUsingTitle, true)

	self.MultiStatConfig = Outfitter:New(Outfitter._MultiStatConfig, self.StatsSection)

	self.Error = self:CreateFontString(nil, "ARTWORK", "GameFontRed")

	-- Layout

	self:SetPoint("TOPLEFT", OutfitterFrame, "TOPLEFT", 20, -40)

	-- Info section

	self.InfoSection:SetPoint("TOPLEFT", self, "TOPLEFT", 20, -25)
	self.InfoSection:SetWidth(295)
	self.InfoSection:SetHeight(100)

	self.Name:SetPoint("TOPLEFT", self.InfoSection, "TOPLEFT", 100, -20)

	self.ScriptMenu:SetPoint("TOPLEFT", self.Name, "TOPLEFT", 0, -35)
	self.ScriptMenu:SetWidth(170)

	-- Build section

	self.BuildSection:SetPoint("TOPLEFT", self.InfoSection, "TOPRIGHT", 10, 0)
	self.BuildSection:SetPoint("BOTTOM", self.InfoSection, "BOTTOM")
	self.BuildSection:SetPoint("RIGHT", self, "RIGHT", -20, 0)

	self.EmptyOutfitCheckButton:SetPoint("TOPLEFT", self.BuildSection, "TOPLEFT", 30, -23)
	self.ExistingOutfitCheckButton:SetPoint("TOPLEFT", self.EmptyOutfitCheckButton, "TOPLEFT", 0, -25)
	self.GenerateOutfitCheckButton:SetPoint("TOPLEFT", self.ExistingOutfitCheckButton, "TOPLEFT", 0, -25)

	-- Stats section

	self.StatsSection:SetPoint("TOPLEFT", self.InfoSection, "BOTTOMLEFT", 0, -10)
	self.StatsSection:SetPoint("RIGHT", self.BuildSection, "RIGHT", 0, 0)

	self.MultiStatConfig:SetPoint("TOPLEFT", self.StatsSection, "TOPLEFT", 25, -15)

	-- Error message

	self.Error:Hide()
	self.Error:SetWidth(280)
	self.Error:SetPoint("RIGHT", self.DoneButton, "LEFT", -30, 0)

	-- Events

	self:SetScript("OnShow", function (self) Outfitter.UIElementsLib:BeginDialog(self) end)
	self:SetScript("OnHide", function (self) Outfitter.UIElementsLib:EndDialog(self) end)

	self.Name:SetScript("OnEnterPressed", function () self:Done() end)
	self.Name:SetScript("OnTextChanged", function () self:Update() end)

	self.ScriptMenu.ItemClickedFunc = function (pMenu, pValue)
		self:PresetScriptChanged(pMenu, pValue)
	end

	self.EmptyOutfitCheckButton:SetScript("OnClick", function (pCheckButton)
		self.EmptyOutfitCheckButton:SetChecked(true)
		self.ExistingOutfitCheckButton:SetChecked(false)
		self.GenerateOutfitCheckButton:SetChecked(false)
		self.MultiStatConfig:Hide()
		self:AdjustSize()
	end)

	self.ExistingOutfitCheckButton:SetScript("OnClick", function (pCheckButton)
		self.EmptyOutfitCheckButton:SetChecked(false)
		self.ExistingOutfitCheckButton:SetChecked(true)
		self.GenerateOutfitCheckButton:SetChecked(false)
		self.MultiStatConfig:Hide()
		self:AdjustSize()
	end)

	self.GenerateOutfitCheckButton:SetScript("OnClick", function (pCheckButton)
		self.EmptyOutfitCheckButton:SetChecked(false)
		self.ExistingOutfitCheckButton:SetChecked(false)
		self.GenerateOutfitCheckButton:SetChecked(true)
		self.MultiStatConfig:Show()
		self:AdjustSize()
	end)

	self.MultiStatConfig.OnNumLinesChanged = function (pMultiStatConfig, pNumLines)
		self:AdjustSize()
	end

	self.MultiStatConfig.OnChange = function ()
		self:Update(true)
	end
end

function Outfitter._NameOutfitDialog:Open(pOutfit)
	self.OutfitToRename = pOutfit

	if self.OutfitToRename then
		self.Title:SetText(Outfitter.cRenameOutfit)

		self.Name:SetText(self.OutfitToRename.Name)

	else
		self.Title:SetText(Outfitter.cNewOutfit)

		self.Name:SetText("")

		self.ScriptMenu:SetCurrentValueText(Outfitter.cNone)

		self.EmptyOutfitCheckButton:SetChecked(false)
		self.ExistingOutfitCheckButton:SetChecked(true)
		self.GenerateOutfitCheckButton:SetChecked(false)

		self.MultiStatConfig:SetConfig(nil)
		self.MultiStatConfig:Hide()
	end

	self:AdjustSize()
	self:Show()
	self.Name:SetFocus()
end

function Outfitter._NameOutfitDialog:AdjustSize()
	local vHeight = 78
	local vWidth = 335

	if not self.OutfitToRename then
		self.ScriptMenu:Show()
		self.InfoSection:SetHeight(100)

		vHeight = vHeight + 100

		vWidth = vWidth + 200

		if self.MultiStatConfig:IsShown() then
			local vStatConfigHeight = self.MultiStatConfig:GetHeight()

			vHeight = vHeight + vStatConfigHeight + 33

			local vStatWidth = 20 + self.MultiStatConfig:GetWidth() + 20

			if vStatWidth > vWidth then
				vWidth = vStatWidth
			end

			self.StatsSection:SetHeight(vStatConfigHeight + 25)
			self.StatsSection:Show()
		else
			self.StatsSection:Hide()
		end

		self.BuildSection:Show()
	else
		self.ScriptMenu:Hide()
		self.InfoSection:SetHeight(65)

		vHeight = vHeight + 65

		self.BuildSection:Hide()
		self.StatsSection:Hide()
	end

	self:SetWidth(vWidth)
	self:SetHeight(vHeight)
end

function Outfitter._NameOutfitDialog:ScriptMenuFunc(menu)
	local category

	menu:AddToggle(Outfitter.cNoScript,
		function ()
			return self.ScriptID
		end, function (menu, value)
			self:PresetScriptChanged(menu, "NONE")
		end)

	for _, presetScript in ipairs(Outfitter.PresetScripts) do
		if not presetScript.Class or presetScript.Class == Outfitter.PlayerClass then
			local newCategory = presetScript.Category or presetScript.Class or "GENERAL"
			if category ~= newCategory then
				category = newCategory
				Outfitter:AddScriptCategorySubmenu(menu, category,
					function ()
						return self.ScriptID
					end, function (menu, value)
						self:PresetScriptChanged(menu, value)
					end)
			end
		end
	end
end

function Outfitter._NameOutfitDialog:Done()
	local vName = self.Name:GetText()

	if vName
	and vName ~= "" then
		if self.OutfitToRename then
			local vWearingOutfit = Outfitter:WearingOutfit(self.OutfitToRename)
			local vPreviousName = self.OutfitToRename.Name
			Outfitter:DispatchOutfitEvent("WILL_RENAME_OUTFIT", self.OutfitToRename, vPreviousName, vName)

			if vWearingOutfit then
				Outfitter:DispatchOutfitEvent("UNWEAR_OUTFIT", self.OutfitToRename.Name, self.OutfitToRename)
			end

			self.OutfitToRename:SetName(vName)
			Outfitter.DisplayIsDirty = true

			if vWearingOutfit then
				Outfitter:DispatchOutfitEvent("WEAR_OUTFIT", self.OutfitToRename.Name, self.OutfitToRename)
			end
			Outfitter:DispatchOutfitEvent("DID_RENAME_OUTFIT", self.OutfitToRename, vPreviousName, vName)
		else
			-- Create the new outift

			local vScriptID = self.ScriptID

			local vOutfit

			if self.EmptyOutfitCheckButton:GetChecked() then
				vOutfit = Outfitter:NewEmptyOutfit(vName)
			elseif self.ExistingOutfitCheckButton:GetChecked() then
				vOutfit = Outfitter:GetInventoryOutfit(vName)
			else
				local vStatConfig = self.MultiStatConfig:GetConfig()

				vOutfit = Outfitter:GenerateSmartOutfit(vName, vStatConfig, Outfitter:GetInventoryCache(), true, function (pOutfit)
					if pOutfit and not pOutfit:IsEmpty() then
						pOutfit.StatConfig = vStatConfig
						self:AddOutfit(pOutfit, vScriptID)
					else
						Outfitter:ErrorMessage(Outfitter.cNoItemsWithStat);
					end
				end)

				self:Hide()
				return
			end

			if not vOutfit then
				vOutfit = Outfitter:NewEmptyOutfit(vName)
			end

			self:AddOutfit(vOutfit, vScriptID)
		end
	end

	self:Hide()
end

function Outfitter._NameOutfitDialog:PresetScriptChanged(menu, scriptID)
	-- Change the ID to nil if it's NONE
	if scriptID == "NONE" then
		scriptID = nil
	end

	-- Save the ID
	self.ScriptID = scriptID

	-- Get the script
	local script
	if scriptID then
		script = Outfitter:GetPresetScriptByID(scriptID)
	end

	-- Update the menu
	self.ScriptMenu:SetCurrentValueText(script and script.Name or "None")

	-- Set the default name if there isn't one or it's the previous default
	local name = self.Name:GetText()
	if scriptID and (not name or name == "" or name == self.PreviousDefaultName) then
		name = script.Name
		self.Name:SetText(name)
		self.PreviousDefaultName = name
	end
end

function Outfitter._NameOutfitDialog:CheckForStatOutfit(pMenu, pValue)
	self:Update(true)
end

function Outfitter._NameOutfitDialog:Cancel()
	self:Hide()
end

function Outfitter._NameOutfitDialog:Update(pCheckForStatOutfit)
	local vEnableDoneButton = true
	local vErrorMessage

	-- If there's no name entered then disable the okay button

	local vName = self.Name:GetText()

	if not vName
	or vName == "" then
		vEnableDoneButton = false
	else
		local vOutfit = Outfitter:FindOutfitByName(vName)

		if vOutfit
		and vOutfit ~= self.OutfitToRename then
			vErrorMessage = Outfitter.cNameAlreadyUsedError
			vEnableDoneButton = false
		end
	end

	--

	if not vErrorMessage
	and pCheckForStatOutfit
	and self.GenerateOutfitCheckButton:GetChecked() then
		local vStat = self.MultiStatConfig:GetConfig()

		if vStat
		and not vStat.Complex then -- Don't attempt to test for iterative outfits
			vOutfit = Outfitter:GenerateSmartOutfit("temp outfit", vStat, Outfitter:GetInventoryCache())
			if not vOutfit
			or vOutfit:IsEmpty() then
				vErrorMessage = Outfitter.cNoItemsWithStatError
			end
		end
	end

	if vErrorMessage then
		self.Error:SetText(vErrorMessage)
		self.Error:Show()
	else
		self.Error:Hide()
	end

	self.DoneButton:SetEnabled(vEnableDoneButton)

	self:AdjustSize()
end

function Outfitter._NameOutfitDialog:AddOutfit(pOutfit, pScriptID)
	-- Add the outfit

	local vCategoryID = Outfitter:AddOutfit(pOutfit)

	-- Set the script

	if pScriptID and pScriptID ~= "NONE" then
		Outfitter:SetScriptID(pOutfit, pScriptID)
	end

	-- Wear the outfit

	Outfitter:WearOutfit(pOutfit)

	Outfitter:Update(true)
end

----------------------------------------
Outfitter._RebuildOutfitDialog = {}
----------------------------------------

function Outfitter._RebuildOutfitDialog:New(pParent)
	return Outfitter:New(Outfitter.UIElementsLib._ModalDialogFrame, pParent, Outfitter.cRebuild, 315, 207)
end

function Outfitter._RebuildOutfitDialog:Construct(pParent)
	self:Hide()

	--self:SetTopLevel(true)
	self:SetFrameStrata("DIALOG")
	self:EnableMouse(true)

	-- Controls

	self.StatsSection = Outfitter:New(Outfitter.UIElementsLib._Section, self, Outfitter.cStats)
	self.MultiStatConfig = Outfitter:New(Outfitter._MultiStatConfig, self.StatsSection)

	-- Layout

	self:SetPoint("TOPLEFT", OutfitterFrame, "TOPLEFT", 20, -40)

	-- Stats section

	self.StatsSection:SetPoint("TOPLEFT", self, "TOPLEFT", 20, -25)
	self.StatsSection:SetPoint("RIGHT", self, "RIGHT", -20, 0)

	self.MultiStatConfig:SetPoint("TOPLEFT", self.StatsSection, "TOPLEFT", 25, -15)

	-- Events

	self:SetScript("OnShow", function (self) Outfitter.UIElementsLib:BeginDialog(self) end)
	self:SetScript("OnHide", function (self) Outfitter.UIElementsLib:EndDialog(self) end)

	self.MultiStatConfig.OnNumLinesChanged = function (pMultiStatConfig, pNumLines)
		self:AdjustSize()
	end
end

function Outfitter._RebuildOutfitDialog:Open(pOutfit)
	self.Outfit = pOutfit

	if self.Outfit.StatID
	and not self.Outfit.StatConfig then
		self.Outfit.StatConfig = {{StatID = self.Outfit.StatID}}
	end

	self.MultiStatConfig:SetConfig(self.Outfit.StatConfig)

	self:AdjustSize()
	self:Show()
end

function Outfitter._RebuildOutfitDialog:AdjustSize()
	local vStatConfigHeight = self.MultiStatConfig:GetHeight()

	local vHeight = 51 + vStatConfigHeight + 48
	local vWidth = 40 + self.MultiStatConfig:GetWidth() + 40

	self.StatsSection:SetHeight(vStatConfigHeight + 25)

	self:SetWidth(vWidth)
	self:SetHeight(vHeight)
end

function Outfitter._RebuildOutfitDialog:Done()
	self.Outfit.StatConfig = self.MultiStatConfig:GetConfig()

	self:Hide()

	Outfitter:RebuildOutfit(self.Outfit)
end

function Outfitter._RebuildOutfitDialog:Cancel()
	self:Hide()
end

function Outfitter._RebuildOutfitDialog:Update(pCheckForStatOutfit)
	local vEnableDoneButton = true
	local vErrorMessage

	-- If there's no name entered then disable the okay button

	local vName = self.Name:GetText()

	if not vName
	or vName == "" then
		vEnableDoneButton = false
	else
		local vOutfit = Outfitter:FindOutfitByName(vName)

		if vOutfit
		and vOutfit ~= self.OutfitToRename then
			vErrorMessage = Outfitter.cNameAlreadyUsedError
			vEnableDoneButton = false
		end
	end

	--

	if not vErrorMessage
	and pCheckForStatOutfit
	and self.GenerateOutfitCheckButton:GetChecked() then
		local vStat = self.MultiStatConfig:GetConfig()

		if vStat
		and not vStat.Complex then -- Don't attempt to test for iterative outfits
			vOutfit = Outfitter:GenerateSmartOutfit("temp outfit", vStat, Outfitter:GetInventoryCache())
			if not vOutfit
			or vOutfit:IsEmpty() then
				vErrorMessage = Outfitter.cNoItemsWithStatError
			end
		end
	end

	if vErrorMessage then
		self.Error:SetText(vErrorMessage)
		self.Error:Show()
	else
		self.Error:Hide()
	end

	self.DoneButton:SetEnabled(vEnableDoneButton)

	self:AdjustSize()
end

----------------------------------------
--
----------------------------------------

function Outfitter:SetButtonEnable(pButton, pEnabled)
	if pEnabled then
		pButton:Enable()
		pButton:SetAlpha(1.0)
		pButton:EnableMouse(true)
		--_G[pButton:GetName().."Text"]:SetAlpha(1.0)
	else
		pButton:Disable()
		pButton:SetAlpha(0.7)
		pButton:EnableMouse(false)
		--_G[pButton:GetName().."Text"]:SetAlpha(0.7)
	end
end

function Outfitter:GetIndexedOutfit(categoryID, index)
	-- Ensure settings are in place
	if not self.Settings or not self.Settings.Outfits then
		return
	end

	-- Get the outfits for the category
	local outfits = self.Settings.Outfits[categoryID]
	if not outfits then
		return
	end

	-- Get the indexed outfit
	local outfit = outfits[index]
	if not outfit then
		return
	end

	-- Done
	return outfit
end

function Outfitter:GetOutfitFromDropdown(pDropdown)
	return pDropdown:GetParent():GetParent():GetOutfit()
end

Outfitter.OutfitMenuActions = {}

function Outfitter.OutfitMenuActions:DELETE(pOutfit)
	self:AskDeleteOutfit(pOutfit)
end

function Outfitter.OutfitMenuActions:RENAME(pOutfit)
	Outfitter:OpenNameOutfitDialog(pOutfit)
end

function Outfitter.OutfitMenuActions:SCRIPT_SETTINGS(pOutfit)
	OutfitterEditScriptDialog:Open(pOutfit)
end

function Outfitter.OutfitMenuActions:EDIT_SCRIPT(pOutfit)
	if pOutfit.ScriptID == nil and pOutfit.Script == nil then
		pOutfit.Script = pOutfit.SavedScript
		pOutfit.SavedScript = nil
	end

	OutfitterEditScriptDialog:Open(pOutfit, true)
end

function Outfitter.OutfitMenuActions:DISABLE(pOutfit)
	self:SetScriptEnabled(pOutfit, pOutfit.Disabled)
end

function Outfitter:SetScriptEnabled(pOutfit, pEnable)
	if (not pEnable) == (pOutfit.Disabled or false) then
		return
	end

	pOutfit.Disabled = not pEnable

	if pOutfit.Disabled then
		self:DeactivateScript(pOutfit)
	else
		self:ActivateScript(pOutfit)
	end

	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:SHOWHELM(pOutfit)
	pOutfit.ShowHelm = true
	self.OutfitStack:UpdateOutfitDisplay()
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:HIDEHELM(pOutfit)
	pOutfit.ShowHelm = false
	self.OutfitStack:UpdateOutfitDisplay()
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:IGNOREHELM(pOutfit)
	pOutfit.ShowHelm = nil
	self.OutfitStack:UpdateOutfitDisplay()
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:SHOWCLOAK(pOutfit)
	pOutfit.ShowCloak = true
	self.OutfitStack:UpdateOutfitDisplay()
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:HIDECLOAK(pOutfit)
	pOutfit.ShowCloak = false
	self.OutfitStack:UpdateOutfitDisplay()
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:IGNORECLOAK(pOutfit)
	pOutfit.ShowCloak = nil
	self.OutfitStack:UpdateOutfitDisplay()
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:IGNORETITLE(pOutfit)
	pOutfit.ShowTitleID = nil
	self.OutfitStack:UpdateOutfitDisplay()
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:COMBATDISABLE(pOutfit)
	if pOutfit.CombatDisabled then
		pOutfit.CombatDisabled = nil
	else
		pOutfit.CombatDisabled = true
	end

	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:REBUILD(pOutfit)
	self:AskRebuildOutfit(pOutfit)
end

function Outfitter.OutfitMenuActions:REBUILD_FOR(pOutfit)
	Outfitter:OpenRebuildOutfitDialog(pOutfit)
end

function Outfitter.OutfitMenuActions:SET_CURRENT(pOutfit)
	self:AskSetCurrent(pOutfit)
end

function Outfitter.OutfitMenuActions:UNEQUIP_OTHERS(pOutfit)
	if pOutfit.UnequipOthers then
		pOutfit.UnequipOthers = nil
	else
		pOutfit.UnequipOthers = true
	end
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:IGNORE_COMPARISONS(pOutfit)
	if pOutfit.IgnoreComparisons then
		pOutfit.IgnoreComparisons = nil
	else
		pOutfit.IgnoreComparisons = true
	end
	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:DEPOSIT(pOutfit)
	self:DepositOutfit(pOutfit)
end

function Outfitter.OutfitMenuActions:DEPOSITUNIQUE(pOutfit)
	self:DepositOutfit(pOutfit, true)
end

function Outfitter.OutfitMenuActions:WITHDRAW(pOutfit)
	self:WithdrawOutfit(pOutfit)
end

function Outfitter.OutfitMenuActions:DEPOSITOTHERS(pOutfit)
	self:DepositOtherOutfits(pOutfit)
end

function Outfitter.OutfitMenuActions:WITHDRAWOTHERS(pOutfit)
	self:WithdrawOtherOutfits(pOutfit)
end

function Outfitter.OutfitMenuActions:DEPOSITVOID(pOutfit)
	self:DepositOutfitToVoidStorage(pOutfit)
end

function Outfitter.OutfitMenuActions:DEPOSITUNIQUEVOID(pOutfit)
	self:DepositOutfitToVoidStorage(pOutfit, true)
end

function Outfitter.OutfitMenuActions:WITHDRAWVOID(pOutfit)
	self:WithdrawOutfitFromVoidStorage(pOutfit)
end

function Outfitter.OutfitMenuActions:OUTFITBAR_SHOW(pOutfit)
	local vSettings = self.OutfitBar:GetOutfitSettings(pOutfit)

	vSettings.Hide = not vSettings.Hide

	self:OutfitSettingsChanged(pOutfit)
end

function Outfitter.OutfitMenuActions:OUTFITBAR_CHOOSEICON(pOutfit)
	OutfitterChooseIconDialog:Open(pOutfit)
end

function Outfitter:PerformAction(pActionID, pOutfit)
	local vActionFunc = Outfitter.OutfitMenuActions[pActionID]

	if vActionFunc then
		vActionFunc(self, pOutfit)
	elseif string.sub(pActionID, 1, 8) == "BINDING_" then
		local vBindingIndex = string.sub(pActionID, 9)

		if vBindingIndex == "NONE" then
			Outfitter:SetOutfitBindingIndex(pOutfit, nil)
		else
			Outfitter:SetOutfitBindingIndex(pOutfit, tonumber(vBindingIndex))
		end
	elseif string.sub(pActionID, 1, 7) == "PRESET_" then
		local vScriptID = string.sub(pActionID, 8)

		if vScriptID == "NONE" then
			Outfitter:DeactivateScript(pOutfit)

			pOutfit.SavedScript = pOutfit.Script

			pOutfit.ScriptID = nil
			pOutfit.Script = nil
		else
			pOutfit.SavedScript = nil

			Outfitter:SetScriptID(pOutfit, vScriptID)

			-- If the script has settings then open the
			-- dialog

			if Outfitter:OutfitHasSettings(pOutfit) then
				OutfitterEditScriptDialog:Open(pOutfit)
			end
		end

		Outfitter:OutfitSettingsChanged(pOutfit)
	elseif string.sub(pActionID, 1, 6) == "TITLE_" then
		local vTitleID = tonumber(string.sub(pActionID, 7))

		pOutfit.ShowTitleID = vTitleID

		self.SchedulerLib:ScheduleUniqueTask(0.5, self.OutfitStack.UpdateOutfitDisplay, self.OutfitStack)
	elseif string.sub(pActionID, 1, 13) == "REBUILD_STAT_" then
		local vStatID = string.sub(pActionID, 14)

		pOutfit.StatID = vStatID
		Outfitter:AskRebuildOutfit(pOutfit)
	else
		return
	end

	Outfitter:Update(true)
end

function Outfitter.OutfitItemSelected(dropdown, item)
	local outfit = Outfitter:GetOutfitFromDropdown(dropdown)

	if not outfit then
		Outfitter:ErrorMessage("Outfit for menu item "..tostring(pItem.name).." not found")
		return
	end

	local value = item
	if type(value) ~= "string" then
		value = item.option.value
		if not value and item[1] then
			value = item.option.args[item[1]]
		end
	end

	Outfitter:PerformAction(value, outfit)
end

----------------------------------------
--
----------------------------------------

function Outfitter.ScrollbarTrench_SizeChanged(pScrollbarTrench)
	local vScrollbarTrenchName = pScrollbarTrench:GetName()
	local vScrollbarTrenchMiddle = _G[vScrollbarTrenchName.."Middle"]

	local vMiddleHeight= pScrollbarTrench:GetHeight() - 51
	vScrollbarTrenchMiddle:SetHeight(vMiddleHeight)
end

function Outfitter.InputBox_OnLoad(self, pChildDepth)
	if not pChildDepth then
		pChildDepth = 0
	end

	local vParent = self:GetParent()

	for vDepthIndex = 1, pChildDepth do
		vParent = vParent:GetParent()
	end

	if vParent.lastEditBox then
		self.prevEditBox = vParent.lastEditBox
		self.nextEditBox = vParent.lastEditBox.nextEditBox

		self.prevEditBox.nextEditBox = self
		self.nextEditBox.prevEditBox = self
	else
		self.prevEditBox = self
		self.nextEditBox = self
	end

	vParent.lastEditBox = self
end

function Outfitter.InputBox_TabPressed(self)
	local vReverse = IsShiftKeyDown()
	local vEditBox = self

	for vIndex = 1, 50 do
		local vNextEditBox

		if vReverse then
			vNextEditBox = vEditBox.prevEditBox
		else
			vNextEditBox = vEditBox.nextEditBox
		end

		if vNextEditBox:IsVisible()
		and not vNextEditBox.isDisabled then
			vNextEditBox:SetFocus()
			return
		end

		vEditBox = vNextEditBox
	end
end

function Outfitter:ToggleUI(pToggleCharWindow)
	if self:IsOpen() then
		OutfitterFrame:Hide()

		if pToggleCharWindow then
			HideUIPanel(CharacterFrame)
		end
	else
		self:OpenUI()
	end
end

function Outfitter:OpenUI()
	ShowUIPanel(CharacterFrame)
	CharacterFrame_ShowSubFrame("PaperDollFrame")
	OutfitterFrame:Show()
end

function Outfitter:WearingOutfitName(pOutfitName)
	local vOutfit = Outfitter:FindOutfitByName(pOutfitName)

	return vOutfit and Outfitter:WearingOutfit(vOutfit)
end

function Outfitter:WearingOutfit(pOutfit)
	return Outfitter.OutfitStack:FindOutfit(pOutfit)
end

function Outfitter:CheckDatabase()
	-- Just reset if they're running a really old version
	if self.Settings.Version < 18 then
		self:Reset()
	end

	-- Remove ranged slot (WoW patch 5)
--[[
	if self.Settings.Version < 19 then
		if self.Settings.Outfits then
			for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
				for vIndex, vOutfit in ipairs(vOutfits) do
					if vOutfit.Items then
						vOutfit.Items.RangedSlot = nil
					end
				end
			end
		end
		self.Settings.Version = 19
	end--]]

	--[[ Added ID11,12 and 13 for WoW patch 6

	if self.Settings.Version < 20 then
		if self.Settings.Outfits then
			for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
				for vIndex, vOutfit in ipairs(vOutfits) do
					for _, vItem in pairs(vOutfit.Items) do
						vItem.ID11 = 0
						vItem.ID12 = 0
						vItem.ID13 = 0
					end
				end
			end
		end
		self.Settings.Version = 20
	end

	]]-- superseded below

	-- Added InstanceDifficultyID, BonusIDs for WoW patch 6
	-- Added UpgradeTypeID, UpgradeID for WoW patch 6.2

	if self.Settings.Version < 21 then
		if self.Settings.Outfits then
			for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
				for vIndex, vOutfit in ipairs(vOutfits) do
					for _, vItem in pairs(vOutfit.Items) do
						vItem.UpgradeTypeID = 0
						vItem.InstanceDifficultyID = 0
						vItem.BonusIDs = "0"
						vItem.UpgradeID = 0
						vItem.ReforgeID = nil
						vItem.ID11 = nil
						vItem.ID12 = nil
						vItem.ID13 = nil
					end
				end
			end
		end
		self.Settings.Version = 21
	end

	-- Normalized BonusIDs
	if self.Settings.Version < 22 then
		if self.Settings.Outfits then
			for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
				for vIndex, vOutfit in ipairs(vOutfits) do
					for _, vItem in pairs(vOutfit.Items) do
						if not vItem.BonusIDs
						or vItem.BonusIDs == "0"
						or vItem.BonusIDs == "0:0:0" then
							vItem.BonusIDs = "::"
						end
					end
				end
			end
		end
		self.Settings.Version = 22
	end

	-- Repair missing settings

	if not self.Settings.RecentCompleteOutfits then
		self.Settings.RecentCompleteOutfits = {}
	end

	if not self.Settings.LayerIndex then
		self.Settings.LayerIndex = {}
	end

	if not self.Settings.LastOutfitStack then
		self.Settings.LastOutfitStack = {}
	end

	if not self.Settings.RecentCompleteOutfits then
		self.Settings.RecentCompleteOutfits = {}
	end

	if not self.Settings.OutfitBar then
		self.Settings.OutfitBar = {}
		self.Settings.OutfitBar.ShowOutfitBar = true
	end

	-- Scan the outfits and make sure everything is in order

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vIndex, vOutfit in ipairs(vOutfits) do
			vOutfit:CheckOutfit(vCategoryID)
		end
	end
end

function Outfitter:CheckOutfitCategories()
	local vAllOutfits = {}

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for _, vOutfit in ipairs(vOutfits) do
			table.insert(vAllOutfits, vOutfit)
		end
	end

	for _, vOutfit in ipairs(vAllOutfits) do
		self:OutfitSettingsChanged(vOutfit)
	end
end

function Outfitter:UpdateInvTypes()
	local vInventoryCache = self:GetInventoryCache()
	local vResult = true

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vIndex, vOutfit in ipairs(vOutfits) do
			if not vOutfit:UpdateInvTypes(vInventoryCache) then
				vResult = false
			end
		end
	end

	return vResult
end

function Outfitter:UpdateSubTypes()
	local vInventoryCache = self:GetInventoryCache()
	local vResult = true

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vIndex, vOutfit in ipairs(vOutfits) do
			if not vOutfit:UpdateSubTypes(vInventoryCache) then
				vResult = false
			end
		end
	end

	return vResult
end

function Outfitter:UpdateDatabaseItemCodes()
	local vInventoryCache = self:GetInventoryCache()
	local vResult = true

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vIndex, vOutfit in ipairs(vOutfits) do
			if not vOutfit:UpdateDatabaseItemCodes(vInventoryCache) then
				vResult = false
			end
		end
	end

	return vResult
end

function Outfitter:GetPlayerStat(pStatIndex)
	local _, vEffectiveValue, vPosValue, vNegValue = UnitStat("player", pStatIndex)

	return vEffectiveValue - vPosValue - vNegValue, vPosValue + vNegValue
end

function Outfitter:GetDepositList(pOutfit, pUniqueItemsOnly)
	-- Deselect any outfits to avoid them from being updated when
	-- items get put away

	self:ClearSelection()

	-- Build a list of items for the outfit

	local vInventoryCache = self:GetInventoryCache()

	vInventoryCache:ResetIgnoreItemFlags()

	-- Make a copy of the outfit

	local vUnequipOutfit = self:NewEmptyOutfit()
	local vItems = pOutfit:GetItems()

	for vInventorySlot, vItem in pairs(vItems) do
		vUnequipOutfit:SetItem(vInventorySlot, vItem)
	end

	-- Subtract out items from other outfits if unique is specified

	if pUniqueItemsOnly then
		for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
			for vOutfitIndex, vOutfit in ipairs(vOutfits) do
				if vOutfit ~= pOutfit then
					local vMissingItems, vBankedItems = vInventoryCache:GetMissingItems(vOutfit)

					-- Only subtract out items from outfits which aren't themselves partialy banked

					if vBankedItems == nil then
						self:SubtractOutfit(vUnequipOutfit, vOutfit, true)
					end
				end -- if vOutfit
			end -- for vOutfitIndex
		end -- for vCategoryID
	end -- if pUniqueItemsOnly

	return vUnequipOutfit, vInventoryCache
end

function Outfitter:DepositOutfit(pOutfit, pUniqueItemsOnly)
	local vUnequipOutfit, vInventoryCache = self:GetDepositList(pOutfit, pUniqueItemsOnly)

	-- Build the change list

	vInventoryCache:ResetIgnoreItemFlags()

	local vEquipmentChangeList = Outfitter:New(Outfitter._EquipmentChanges)
	vEquipmentChangeList:addUnequipChangesForOutfit(vUnequipOutfit, vInventoryCache)

	-- Eliminate items which are already banked

	local vChangeIndex = 1
	local vNumChanges = #vEquipmentChangeList

	while vChangeIndex <= vNumChanges do
		vEquipmentChange = vEquipmentChangeList[vChangeIndex]

		if self:IsBankBagIndex(vEquipmentChange.FromLocation.BagIndex) then
			table.remove(vEquipmentChangeList, vChangeIndex)
			vNumChanges = vNumChanges - 1
		else
			vChangeIndex = vChangeIndex + 1
		end
	end

	-- Get the list of empty bank slots

	local vEmptyBankSlots = self:GetEmptyBankSlotList()

	-- Execute the changes
	vEquipmentChangeList:execute(vEmptyBankSlots, vInventoryCache)

	self:DispatchOutfitEvent("EDIT_OUTFIT", pOutfit:GetName(), pOutfit)
end

function Outfitter:DepositOtherOutfits(pOutfit)
	-- Deselect any outfits to avoid them from being updated when
	-- items get put away

	self:ClearSelection()

	-- Get a list of equippable items

	local vInventoryCache = self:GetInventoryCache()

	vInventoryCache:ResetIgnoreItemFlags()

	-- Mark all items in the current outfit so they won't be deposited

	local vItems = pOutfit:GetItems()

	for vInventorySlot, vOutfitItem in pairs(vItems) do
		local vItem, vIgnoredItem = vInventoryCache:FindItemOrAlt(vOutfitItem, true)

		-- Nothing more to do, the find command marks the item
	end -- for

	-- Build a list of items in all outfits

	local vEquipmentChangeList = Outfitter:New(Outfitter._EquipmentChanges)

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit ~= pOutfit then
				local vItems = vOutfit:GetItems()

				for vInventorySlot, vOutfitItem in pairs(vItems) do
					local vItem, vIgnoredItem = vInventoryCache:FindItemOrAlt(vOutfitItem, true)

					if vItem
					and not self:IsBankBagIndex(vItem.Location.BagIndex) then
						vEquipmentChangeList:addChange({FromLocation = vItem.Location, Item = vItem, ToLocation = nil})
					end
				end -- for
			end -- if vOutfit
		end -- for vOutfitIndex
	end -- for vCategoryID

	if #vEquipmentChangeList == 0 then
		return
	end

	-- Get the list of empty bank slots

	local vEmptyBankSlots = self:GetEmptyBankSlotList()

	-- Execute the changes
	vEquipmentChangeList:execute(vEmptyBankSlots, vExpectedInventoryCache)

	self:DispatchOutfitEvent("EDIT_OUTFIT", pOutfit:GetName(), pOutfit)
end

function Outfitter:WithdrawOutfit(pOutfit)
	local vInventoryCache = self:GetInventoryCache()

	-- Build a list of items for the outfit

	vInventoryCache:ResetIgnoreItemFlags()

	local vEquipmentChangeList = Outfitter:New(Outfitter._EquipmentChanges)
	vEquipmentChangeList:addUnequipChangesForOutfit(pOutfit, vInventoryCache)

	if not vEquipmentChangeList then
		return
	end

	-- Eliminate items which aren't in the bank

	local vChangeIndex = 1
	local vNumChanges = #vEquipmentChangeList

	while vChangeIndex <= vNumChanges do
		vEquipmentChange = vEquipmentChangeList[vChangeIndex]

		if not self:IsBankBagIndex(vEquipmentChange.FromLocation.BagIndex) then
			table.remove(vEquipmentChangeList, vChangeIndex)
			vNumChanges = vNumChanges - 1
		else
			vChangeIndex = vChangeIndex + 1
		end
	end

	-- Get the list of empty bag slots

	local vEmptyBagSlots = self:GetEmptyBagSlotList()

	-- Execute the changes

	vEquipmentChangeList:execute(vEmptyBagSlots, vExpectedInventoryCache)

	self:DispatchOutfitEvent("EDIT_OUTFIT", pOutfit:GetName(), pOutfit)
end

function Outfitter:WithdrawOtherOutfits(pOutfit)
	local vInventoryCache = self:GetInventoryCache()

	-- Build a list of items in all other outfits

	local vEquipmentChangeList = {}

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if vOutfit ~= pOutfit then
				local vItems = vOutfit:GetItems()

				for vInventorySlot, vOutfitItem in pairs(vItems) do
					local vItem, vIgnoredItem = vInventoryCache:FindItemOrAlt(vOutfitItem, true)

					if vItem
					and self:IsBankBagIndex(vItem.Location.BagIndex) then
						table.insert(vEquipmentChangeList, {FromLocation = vItem.Location, Item = vItem, ToLocation = nil})
					end
				end -- for
			end -- if vOutfit
		end -- for vOutfitIndex
	end -- for vCategoryID

	if #vEquipmentChangeList == 0 then
		return
	end

	-- Get the list of empty bag slots

	local vEmptyBagSlots = self:GetEmptyBagSlotList()

	-- Execute the changes

	self:ExecuteEquipmentChangeList2(vEquipmentChangeList, vEmptyBagSlots, self.cWithdrawBagsFullError, vExpectedInventoryCache)

	self:DispatchOutfitEvent("EDIT_OUTFIT", pOutfit:GetName(), pOutfit)
end

local VOID_DEPOSIT_MAX = 8

function Outfitter:DepositOutfitToVoidStorage(pOutfit, pUniqueItemsOnly)
	local vUnequipOutfit, vInventoryCache = self:GetDepositList(pOutfit, pUniqueItemsOnly)

	-- Get a list of the deposit slot contents

	local vItemIDByDepositSlot = {}
	local vDepositSlotByItemID = {}
	for vIndex = 1, VOID_DEPOSIT_MAX do
		local vItemID, vTextureName = GetVoidTransferDepositInfo(vIndex)
		if vItemID then
			vItemIDByDepositSlot[vIndex] = vItemID
			vDepositSlotByItemID[vItemID] = vIndex
		end
	end

	-- Eliminate items which are already in the deposit area

	local vItems = vUnequipOutfit:GetItems()
	for vInventorySlot, vOutfitItem in pairs(vItems) do
		if vDepositSlotByItemID[vOutfitItem.Code] then
			vItems[vInventorySlot] = nil
		end
	end

	-- Get a list of items which are available to move

	vInventoryCache:ResetIgnoreItemFlags()
	local vEquipmentChangeList = Outfitter:New(Outfitter._EquipmentChanges)
	vEquipmentChangeList:addUnequipChangesForOutfit(vUnequipOutfit, vInventoryCache)

	-- Move the items to the deposit slots

	for _, vEquipmentChange in ipairs(vEquipmentChangeList) do
		-- Find an empty slot
		local vDepositIndex
		for vIndex = 1, VOID_DEPOSIT_MAX do
			if not vItemIDByDepositSlot[vIndex] then
				vDepositIndex = vIndex
				break
			end
		end

		-- No more slots
		if not vDepositIndex then
			Outfitter:DebugMessage("No empty void storage slots")
			break
		end

		-- Move the item
		Outfitter:DebugMessage("Moving item to deposit slot %s", tostring(vDepositIndex))
		self:PickupItemLocation(vEquipmentChange.FromLocation)
		ClickVoidTransferDepositSlot(vDepositIndex, false)
		vItemIDByDepositSlot[vDepositIndex] = vEquipmentChange.Item.Code
		vDepositSlotByItemID[vEquipmentChange.Item.Code] = vDepositIndex
	end

	self:DispatchOutfitEvent("EDIT_OUTFIT", pOutfit:GetName(), pOutfit)
end

function Outfitter.GameToolTip_OnShow(...)
	Outfitter.EventLib:DispatchEvent("GAMETOOLTIP_SHOW")
end

function Outfitter.GameToolTip_OnHide(...)
	Outfitter.EventLib:DispatchEvent("GAMETOOLTIP_HIDE")
end

function Outfitter:GetOutfitsUsingItem(pItemInfo)
	local vFoundOutfits

	for vCategoryID, vOutfits in pairs(self.Settings.Outfits) do
		for _, vOutfit in ipairs(vOutfits) do
			if vOutfit:OutfitUsesItem(pItemInfo) then
				if not vFoundOutfits then
					vFoundOutfits = {}
				end

				table.insert(vFoundOutfits, vOutfit)
			end
		end
	end

	return vFoundOutfits
end

function Outfitter:GetOutfitsListAsText(pOutfits)
	if not pOutfits
	or #pOutfits == 0 then
		return
	end

	local vInventoryCache = self:GetInventoryCache()
	local vNames = nil

	for _, vOutfit in ipairs(pOutfits) do
		local vMissingItems, vBankedItems = vInventoryCache:GetMissingItems(vOutfit)
		local vName

		if vOutfit.Disabled then
			vName = GRAY_FONT_COLOR_CODE
		elseif vMissingItems then
			vName = RED_FONT_COLOR_CODE
		elseif vBankedItems then
			vName = self.BANKED_FONT_COLOR_CODE
		else
			vName = HIGHLIGHT_FONT_COLOR_CODE
		end

		 vName = vName..vOutfit:GetName()..FONT_COLOR_CODE_CLOSE

		if vNames then
			vNames = vNames..", "..vName
		else
			vNames = vName
		end
	end

	return vNames
end

function Outfitter:AddOutfitsUsingItemToTooltip(pTooltip, pItemInfo)
	local vOutfitListString

	if self.OutfitInfoCache.OutfitsUsingItem
	and self.OutfitInfoCache.OutfitsUsingItem.Link
	and self.OutfitInfoCache.OutfitsUsingItem.Link == pItemInfo.Link then
		vOutfitListString = self.OutfitInfoCache.OutfitsUsingItem.String
	else
		local vOutfits = self:GetOutfitsUsingItem(pItemInfo)

		if vOutfits then
			vOutfitListString = self:GetOutfitsListAsText(vOutfits)
		end

		-- Update the cache

		if pItemInfo.Link then
			if not self.OutfitInfoCache.OutfitsUsingItem then
				self.OutfitInfoCache.OutfitsUsingItem = {}
			end

			self.OutfitInfoCache.OutfitsUsingItem.Link = pItemInfo.Link
			self.OutfitInfoCache.OutfitsUsingItem.String = vOutfitListString
		end
	end

	--

	if vOutfitListString then
		local vEquipmentSetsPattern = Outfitter:ConvertFormatStringToSearchPattern(EQUIPMENT_SETS)

		local vTooltipListString = EQUIPMENT_SETS:format(vOutfitListString)
		local vLineIndex, vLineFrame = Outfitter:FindTooltipLine(pTooltip, vEquipmentSetsPattern)

		-- Found an existing EQUIPMENT_SETS line

		if vLineIndex then
			vLineFrame:SetText(vTooltipListString)

		-- Add a new line

		else
			pTooltip:AddLine(vTooltipListString, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, true)
			pTooltip:Show()
		end
	end
end

function Outfitter.GameTooltip_SetBagItem(pTooltip, pBag, pSlot, ...)
	if not Outfitter.Settings.Options.DisableToolTipInfo then
		local vItemInfo = Outfitter:GetBagItemInfo(pBag, pSlot)

		if vItemInfo then
			Outfitter:AddOutfitsUsingItemToTooltip(pTooltip, vItemInfo)
		end
	end
end

function Outfitter.GameTooltip_SetInventoryItem(pTooltip, pUnit, pSlotID, pNameOnly, ...)
	-- Add the list of outfits the item is used by
	if not Outfitter.Settings.Options.DisableToolTipInfo
	and UnitIsUnit(pUnit, "player") then
		local vInventorySlot = Outfitter.cSlotIDToInventorySlot[pSlotID]
		local vItemInfo = Outfitter:GetSlotIDItemInfo(pSlotID)

		if vItemInfo then
			vItemInfo.Location = {SlotName = vInventorySlot}

			Outfitter:AddOutfitsUsingItemToTooltip(pTooltip, vItemInfo)
		end
	end
end

function Outfitter.GameTooltip_SetHyperlink(pTooltip, pLink, ...)
	-- Add the list of outfits the item is used by
	if not Outfitter.Settings.Options.DisableToolTipInfo then
		local vItemInfo = Outfitter:GetItemInfoFromLink(pLink)

		if vItemInfo then
			Outfitter:AddOutfitsUsingItemToTooltip(pTooltip, vItemInfo)
		end
	end
end

function Outfitter:InitializeFrameMethods(pFrame, pMethods)
	if pMethods then
		for vMethodField, vMethodFunction in pairs(pMethods) do
			pFrame[vMethodField] = vMethodFunction
		end
	end
end

function Outfitter:InitializeFrameWidgets(pFrame, pWidgets)
	if pWidgets then
		local vFrameName = pFrame:GetName()

		for _, vWidgetName in pairs(pWidgets) do
			if string.sub(vWidgetName, -1) == "*" then
				vWidgetName = vWidgetName:sub(1, -2)

				pFrame[vWidgetName] = {ParentFrame = _G[vFrameName..vWidgetName]}

				local vIndex = 1

				while true do
					local vWidget = _G[vFrameName..vWidgetName..vIndex]

					if not vWidget then
						break
					end

					vWidget:SetID(vIndex)
					table.insert(pFrame[vWidgetName], vWidget)

					vIndex = vIndex + 1
				end
			else
				pFrame[vWidgetName] = _G[vFrameName..vWidgetName]
			end
		end
	end
end

function Outfitter:TooltipContainsLine(pTooltip, pText)
	local vTooltipName = pTooltip:GetName()

	for vLine = 1, 30 do
		local vText = _G[vTooltipName.."TextLeft"..vLine]

		if not vText then
			return false
		end

		local vTextString = vText:GetText()

		if not vTextString then
			return false
		end

		if vTextString:find(pText) then
			local vColor = {}
			vColor.r, vColor.g, vColor.b = vText:GetTextColor()
			local vHSVColor = Outfitter:RGBToHSV(vColor)
			return true, vHSVColor.s > 0.2 and vHSVColor.v > 0.2 and (vHSVColor.h < 50 or vHSVColor.h > 150), pText == vTextString, vLine
		end
	end
end

function Outfitter:RGBToHSV(pRGBColor)
	local vHSVColor = {}
	local vBaseAngle
	local vHueColor

	if not pRGBColor.r
	or not pRGBColor.g
	or not pRGBColor.b then
		vHSVColor.h = 0
		vHSVColor.s = 0
		vHSVColor.v = 1

		return vHSVColor
	end

	if pRGBColor.r >= pRGBColor.g
	and pRGBColor.r >= pRGBColor.b then
		-- Red is dominant

		vHSVColor.v = pRGBColor.r

		vBaseAngle = 0

		if pRGBColor.g >= pRGBColor.b then
			vHSVColor.s = 1 - pRGBColor.b
			vHueColor = pRGBColor.g
		else
			vHSVColor.s = 1 - pRGBColor.g
			vHueColor = -pRGBColor.b
		end
	elseif pRGBColor.g >= pRGBColor.b then
		-- Green is dominant

		vHSVColor.v = pRGBColor.g

		vBaseAngle = 120

		if pRGBColor.r >= pRGBColor.b then
			vHSVColor.s = 1 - pRGBColor.b
			vHueColor = -pRGBColor.r
		else
			vHSVColor.s = 1 - pRGBColor.r
			vHueColor = pRGBColor.b
		end
	else
		-- Blue is dominant

		vHSVColor.v = pRGBColor.b

		vBaseAngle = 240

		if pRGBColor.r >= pRGBColor.g then
			vHSVColor.s = 1 - pRGBColor.g
			vHueColor = pRGBColor.r
		else
			vHSVColor.s = 1 - pRGBColor.r
			vHueColor = -pRGBColor.g
		end
	end

	vHSVColor.h = vBaseAngle + (vHueColor / vHSVColor.v) * 60

	if vHSVColor.h < 0 then
		vHSVColor.h = vHSVColor.h + 360
	end

	return vHSVColor
end

function Outfitter:FrameEditBox(pEditBox)
	local vLeftTexture = pEditBox:CreateTexture(nil, "ARTWORK")

	vLeftTexture:SetWidth(12)
	vLeftTexture:SetPoint("TOPLEFT", pEditBox, "TOPLEFT", -11, 0)
	vLeftTexture:SetPoint("BOTTOMLEFT", pEditBox, "BOTTOMLEFT", -11, -9)
	vLeftTexture:SetTexture("Interface\\ClassTrainerFrame\\UI-ClassTrainer-FilterBorder")
	vLeftTexture:SetTexCoord(0, 0.09375, 0, 1)

	local vRightTexture = pEditBox:CreateTexture(nil, "ARTWORK")

	vRightTexture:SetWidth(12)
	vRightTexture:SetPoint("TOPRIGHT", pEditBox, "TOPRIGHT", -12, 0)
	vRightTexture:SetPoint("BOTTOMRIGHT", pEditBox, "BOTTOMRIGHT", -12, -9)
	vRightTexture:SetTexture("Interface\\ClassTrainerFrame\\UI-ClassTrainer-FilterBorder")
	vRightTexture:SetTexCoord(0.90625, 1, 0, 1)

	local vMiddleTexture = pEditBox:CreateTexture(nil, "ARTWORK")

	vMiddleTexture:SetPoint("TOPLEFT", vLeftTexture, "TOPRIGHT")
	vMiddleTexture:SetPoint("BOTTOMLEFT", vLeftTexture, "BOTTOMRIGHT")
	vMiddleTexture:SetPoint("TOPRIGHT", vRightTexture, "TOPLEFT")
	vMiddleTexture:SetPoint("BOTTOMRIGHT", vRightTexture, "BOTTOMLEFT")
	vMiddleTexture:SetTexture("Interface\\ClassTrainerFrame\\UI-ClassTrainer-FilterBorder")
	vMiddleTexture:SetTexCoord(0.09375, 0.90625, 0, 1)
end

function Outfitter:ConstructFrame(pFrame, pMethods, ...)
	for vKey, vValue in pairs(pMethods) do
		if vKey == "Widgets" and type(vValue) == "table" then
			if not pFrame.Widgets then
				pFrame.Widgets = {}
			end

			local vNamePrefix

			if pFrame.GetName then
				vNamePrefix = pFrame:GetName()
			else
				vNamePrefix = vValue._Prefix
			end

			if vNamePrefix then
				for _, vName in ipairs(vValue) do
					local vWidget = _G[vNamePrefix..vName]

					if vWidget == nil then
						self:ErrorMessage("Couldn't find global "..vNamePrefix..vName)
					else
						pFrame.Widgets[vName] = vWidget
					end
				end
			else
				Outfitter:ErrorMessage("ConstructFrame: Can't initialize widgets for frame because there's no name prefix")
				Outfitter:DebugStack()
			end
		else
			pFrame[vKey] = vValue
		end
	end

	if pMethods.Construct then
		pFrame:Construct(...)
	end

	return pFrame
end

function Outfitter.InitializeFrame(pObject, ...)
	if not pObject then
		Outfitter:DebugMessage("InitializeFrame called with nil object")
		Outfitter:DebugStack()
		return
	end

	local vNumClasses = select("#", ...)

	for vIndex = 1, vNumClasses do
		local vFunctionTable = select(vIndex, ...)

		for vFunctionName, vFunction in pairs(vFunctionTable) do
			if type(vFunction) == "table" then
				local vTable = {}

				pObject[vFunctionName] = vTable

				local vNamePrefix

				if pObject.GetName then
					vNamePrefix = pObject:GetName()
				else
					vNamePrefix = pObject[vFunctionName.."Prefix"]
				end

				for _, vName in ipairs(vFunction) do
					local vValue = _G[vNamePrefix..vName]

					if vValue == nil then
						self:ErrorMessage("Couldn't find global "..vNamePrefix..vName)
					else
						vTable[vName] = vValue
					end
				end
			else
				pObject[vFunctionName] = vFunction
			end
		end
	end
end

function Outfitter:GetCurrentOutfitInfo()
	return self.OutfitStack:GetCurrentOutfitInfo()
end

function Outfitter:SetUpdateDelay(pTime, pDelay)
	local vUpdateTime = pTime + (pDelay - self.cMinEquipmentUpdateInterval)

	if vUpdateTime > self.LastEquipmentUpdateTime then
		self.LastEquipmentUpdateTime = vUpdateTime
	end
end

function Outfitter:CalcItemHasUseFeature(pItemLink)
	-- Grab a tooltip
	local tooltip = self.TooltipLib:SharedTooltip()
	tooltip:ClearLines()

	-- Set it to the link
	if not tooltip:SetHyperlink(pItemLink) then
		return false
	end

	-- Scan for a "Use:" line
	local tooltipName = tooltip:GetName()
	for vLineIndex = 1, 100 do
		local vLeftTextFrame = _G[tooltipName.."TextLeft"..vLineIndex]
		if not vLeftTextFrame then
			break
		end

		local vLeftText = vLeftTextFrame:GetText()
		if vLeftText then
			local vStartIndex, vEndIndex = vLeftText:find(Outfitter.cUseTooltipLineFormat)

			if vStartIndex then
				return true
			end
		end
	end -- for vLineIndex

	return false
end

function Outfitter:CalcItemUseDuration(pItemLink)
	-- Grab a tooltip
	local tooltip = self.TooltipLib:SharedTooltip()
	tooltip:ClearLines()

	-- Set it to the link
	tooltip:SetHyperlink(pItemLink)

	-- Scan for a "Use:" line
	local tooltipName = tooltip:GetName()
	for vLineIndex = 1, 100 do
		local vLeftTextFrame = _G[tooltipName.."TextLeft"..vLineIndex]
		if not vLeftTextFrame then
			break
		end

		local vLeftText = vLeftTextFrame:GetText()
		if vLeftText then
			local vStartIndex, vEndIndex, vSeconds = vLeftText:find(Outfitter.cUseDurationTooltipLineFormat)

			if not vSeconds then
				vStartIndex, vEndIndex, vSeconds = vLeftText:find(Outfitter.cUseDurationTooltipLineFormat2)
			end

			if vSeconds then
				return tonumber(vSeconds)
			end
		end
	end -- for vLineIndex

	return 0
end

Outfitter.cItemHasUseFeature = {}
Outfitter.cItemUseDuration = {}

function Outfitter:ItemHasUseFeature(pItemLink)
	local vItemCode = self:ParseItemLink2(pItemLink)[1]
	local vHasUseFeature

	if self.cItemHasUseFeature[vItemCode] ~= nil then
		vHasUseFeature = self.cItemHasUseFeature[vItemCode]
	else
		vHasUseFeature = self:CalcItemHasUseFeature(pItemLink)

		self.cItemHasUseFeature[vItemCode] = vHasUseFeature
	end

	return vHasUseFeature
end

function Outfitter:GetItemUseDuration(pItemLink)
	local vItemCode = self:ParseItemLink2(pItemLink)[1]
	local vUseDuration

	if self.cItemUseDuration[vItemCode] then
		vUseDuration  = self.cItemUseDuration[vItemCode]
	else
		vUseDuration = self:CalcItemUseDuration(pItemLink)

		if not vUseDuration then
			vUseDuration = 0
		end

		self.cItemUseDuration[vItemCode] = vUseDuration
	end

	return vUseDuration
end

function Outfitter:InventoryItemIsActive(pInventorySlot)
	-- See if the item is on cooldown at all
	if pInventorySlot == nil then return false end
	local vSlotID = self.cSlotIDs[pInventorySlot]
	local vItemLink = self:GetInventorySlotIDLink(vSlotID)
	local vItemCode = self:GetSlotIDLinkInfo(vSlotID)[1]
	local vStartTime, vDuration, vEnable = GetItemCooldown(vItemCode)

	if not vStartTime or vStartTime == 0 then
		return false
	end

	-- Determine if there's an activity period for the item

	local vUseDuration = self:GetItemUseDuration(vItemLink)

	-- If the time since started is less than the use duration the item is still active
	-- and shouldn't be unequipped

	return GetTime() < vStartTime + vUseDuration
end

-- Some diagnostic code for finding functions that take a long time to
-- execute.  This isn't installed automatically and must be manually called

function Outfitter:Hook()
	self:HookTable(Outfitter, "Outfitter")
end

function Outfitter:HookTable(pTable, pPrefix)
	for vKey, vValue in pairs(pTable) do
		if type(vKey) == "string"
		and type(vValue) == "function"
		and not vKey:find("Outfitter") then
			pTable[vKey] = function (...)
				local vStartTime = GetTime()
				local vResult = {vValue(...)}
				local vEndTime = GetTime()
				if vEndTime - vStartTime > 0.1 then
					self:DebugMessage("Function %s.%s took %f seconds", pPrefix, vKey, vEndTime - vStartTime)
				end

				return unpack(vResult)
			end
		end
	end
end

function Outfitter:ShowAllLinks()
	for vCategory, vOutfits in pairs(self.Settings.Outfits) do
		for _, vOutfit in ipairs(vOutfits) do
			local vItems = vOutfit:GetItems()

			for _, vItem in pairs(vItems) do
				if vItem.Code ~= 0 then
					self:NoteMessage(self:GenerateItemLink(vItem))
				end
			end
		end
	end
end

function Outfitter:GenerateItemLink(pItem)
	if not pItem or pItem.Code == 0 then
		return
	end

	local _, _, vQuality = GetItemInfo(pItem.Code)
	if pItem.Quality then vQuality = pItem.Quality end
	local _, _, _, vQualityColorCode = GetItemQualityColor(vQuality or 1)

	return string.format("|c%s|Hitem:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%s%s|h[%s]|h|r", vQualityColorCode, pItem.Code, pItem.EnchantCode or 0, pItem.JewelCode1 or 0, pItem.JewelCode2 or 0, pItem.JewelCode3 or 0, pItem.JewelCode4 or 0, pItem.SubCode or 0, pItem.UniqueID or 0, pItem.LinkLevel or 0, 0, pItem.UpgradeTypeID or 0, pItem.InstanceDifficultyID or 0, pItem.BonusIDs or "::", (pItem.UpgradeItemType and pItem.UpgradeItemType ~= 0) and (":"..pItem.UpgradeID) or "", pItem.Name or "unknown"), vQuality or 1
end

function Outfitter:ShowMissingItems()
	if not Outfitter.BankFrameIsOpen then
		Outfitter:ErrorMessage(Outfitter.cMustBeAtBankError)
		return
	end

	local vInventoryCache = Outfitter:GetInventoryCache()
	local vFoundItems

	for vCategory, vOutfits in pairs(self.Settings.Outfits) do
		for _, vOutfit in ipairs(vOutfits) do
			local vMissingItems = vInventoryCache:GetMissingItems(vOutfit)

			if vMissingItems then
				for _, vItem in pairs(vMissingItems) do
					if not vFoundItems then
						Outfitter:NoteMessage(Outfitter.cMissingItemReportIntro)
						vFoundItems = true
					end

					Outfitter:NoteMessage(Outfitter:GenerateItemLink(vItem))
				end
			end
		end
	end

	if not vFoundItems then
		Outfitter:NoteMessage(Outfitter.cNoMissingItems)
	end
end

function Outfitter:CallCompanionByName(pName)
	local vNumCompanions = GetNumCompanions("CRITTER")
	local vLowerName = pName:lower()

	for vIndex = 1, vNumCompanions do
		if GetCompanionInfo("CRITTER", vIndex):lower() == vLowerName then
			CallCompanion("CRITTER", vIndex)
			return
		end
	end

	self:ErrorMessage("CallCompanionByName: couldn't find a pet named %s", tostring(pName))
end

function Outfitter:PlayerIsOnQuestID(pQuestID)
	local vNumQuests = GetNumQuestLogEntries()

	for vQuestIndex = 1, vNumQuests do
		local vQuestLink = GetQuestLink(vQuestIndex)

		if vQuestLink then
			local _, _, vQuestID = vQuestLink:find("|Hquest:(%d+)")

			if tonumber(vQuestID) == pQuestID then
				local _, _, vComplete = GetQuestLogLeaderBoard(1, vQuestIndex)

				return true, vComplete
			end
		end
	end

	return false
end

function Outfitter:GetTrackingEnabled(pTexture)
	local vNumTypes = C_Minimap.GetNumTrackingTypes()

	for vIndex = 1, vNumTypes do
		local vName, vTexture, vActive = C_Minimap.GetTrackingInfo(vIndex)
		if vTexture == pTexture then
			return vActive, vIndex
		end
	end
	return false, 0
end

function Outfitter:SetTrackingEnabled(pTexture, pEnabled)
	local vActive, vIndex = self:GetTrackingEnabled(pTexture)
	if pEnabled == 1 then pEnabled = true else pEnabled = false end
	if vActive ~= pEnabled then
		C_Minimap.SetTracking(vIndex, pEnabled == true or pEnabled == 1)
	end
end

----------------------------------------
Outfitter._ExtendedCompareTooltip = {}
----------------------------------------

function Outfitter._ExtendedCompareTooltip:Construct()
	hooksecurefunc("GameTooltip_ShowCompareItem", function (pShift)
		if not Outfitter.Settings.Options.DisableItemComparisons then
			self:ShowCompareItem(pShift)
		end
	end)

	GameTooltip:HookScript("OnHide", function ()
		self:HideCompareItems()
	end)

	GameTooltip:HookScript("OnTooltipSetItem", function ()
		if not IsModifiedClick("COMPAREITEMS") then
			self:HideCompareItems()
		end
	end)

	self.Tooltips = {}
	self.NumTooltipsShown = 0
	self.MaxTooltipsShown = 5
end

function Outfitter._ExtendedCompareTooltip:ShowCompareItem()
	self:HideCompareItems()

	local _, vLink = GameTooltip:GetItem()

	if not vLink then
		return
	end

	local vTooltipItemCodes, vTooltipItemName = Outfitter:ParseItemLink2(vLink)

	if not vTooltipItemCodes then
		return
	end

	local vTooltipItemFamilyName,
	      vTooltipItemLink,
	      vTooltipItemQuality,
	      vTooltipItemLevel,
	      vTooltipItemMinLevel,
	      vTooltipItemType,
	      vTooltipItemSubType,
	      vTooltipItemCount,
	      vTooltipItemInvType = GetItemInfo(vTooltipItemCodes[1])

	if not vTooltipItemInvType then
		return
	end

	-- Figure out which direction to stack in

	local vLeftDist = GameTooltip:GetLeft() or 0
	local vRightDist = GetScreenWidth() - (GameTooltip:GetRight() or 0)

	self.LeftToRight = vLeftDist < vRightDist

	-- Figure out which tooltip to attach to and
	-- append the 'used by' info on shopping tooltips

	self.AnchorToTooltip = nil

	for vIndex, vShoppingTooltip in ipairs(GameTooltip.shoppingTooltips) do
		local _, vShoppingLink = vShoppingTooltip:GetItem()
		local vShoppingItemInfo = Outfitter:GetItemInfoFromLink(vShoppingLink)

		if vShoppingItemInfo then
			Outfitter:AddOutfitsUsingItemToTooltip(vShoppingTooltip, vShoppingItemInfo)
			vShoppingTooltip:Show()
		end

		-- Keep the first shopping tooltip for an anchor since it's the one Blizzard positions at the end
		if not self.AnchorToTooltip then
			self.AnchorToTooltip = vShoppingTooltip
		end
	end

	if not self.AnchorToTooltip then
		self.AnchorToTooltip = GameTooltip
	end

	-- Determine which slots need to be examined

	local vInvSlotInfo = Outfitter.cInvTypeToSlotName[vTooltipItemInvType]
	if not vInvSlotInfo then
		return
	end

	local vInventorySlots = {}

	table.insert(vInventorySlots, vInvSlotInfo.SlotName)

	local vMetaSlotName = vInvSlotInfo.MetaSlotName or vInvSlotInfo.SlotName

	if vMetaSlotName == "Weapon0Slot" then
		table.insert(vInventorySlots, "SecondaryHandSlot")
	elseif vMetaSlotName == "Finger0Slot" then
		table.insert(vInventorySlots, "Finger1Slot")
	elseif vMetaSlotName == "Trinket0Slot" then
		table.insert(vInventorySlots, "Trinket1Slot")
	end

	-- Search outfits for items which can go in the same slot but which aren't
	-- listed in any of the currently shown tooltips

	local vShoppingItems = {}

	for vCategoryID, vOutfits in pairs(Outfitter.Settings.Outfits) do
		for vOutfitIndex, vOutfit in ipairs(vOutfits) do
			if not vOutfit.IgnoreComparisons then
				for _, vInventorySlot in ipairs(vInventorySlots) do
					local vItem = vOutfit:GetItem(vInventorySlot)

					if vItem then
						local vItemLink, vItemQuality = Outfitter:GenerateItemLink(vItem)

						if vItemLink
						and vItemQuality >= 2 then
							table.insert(vShoppingItems, {Item = vItem, OutfitName = vOutfit:GetName(), Link = vItemLink})
						end
					end
				end
			end
		end
	end

	table.sort(vShoppingItems, function (pItem1, pItem2)
		return (pItem1.Item.Level or 0) > (pItem2.Item.Level or 0)
	end)

	for _, vItem in ipairs(vShoppingItems) do
		if self.NumTooltipsShown >= self.MaxTooltipsShown then
			break
		end

		if not self:ShoppingItemIsShown(vItem.Item) then
			self:AddShoppingLink(vItem.OutfitName, vItem.Item.Name, vItem.Link)
		end
	end
end

function Outfitter._ExtendedCompareTooltip:HideCompareItems()
	for _, vTooltip in ipairs(self.Tooltips) do
		vTooltip:ClearAllPoints()
		vTooltip:Hide()
	end

	self.NumTooltipsShown = 0
	self.MaxTooltipsShown = 5
end

function Outfitter._ExtendedCompareTooltip:ItemsAreEquivalent(pItemInfo1, pItemInfo2)
	if not pItemInfo1 or not pItemInfo2 then
		return false
	end

	return pItemInfo1.Code == pItemInfo2.Code
	and pItemInfo1.SubCode == pItemInfo2.SubCode
	and (pItemInfo1.UniqueID == pItemInfo2.UniqueID or pItemInfo1.InvType == "INVTYPE_AMMO" or pItemInfo2.InvType == "INVTYPE_AMMO")
end

function Outfitter._ExtendedCompareTooltip:ShoppingItemIsShown(pItemInfo)
	local _, vTooltipLink = GameTooltip:GetItem()
	local vTooltipItemInfo = Outfitter:GetItemInfoFromLink(vTooltipLink)

	if not vTooltipItemInfo then
		return false
	end

	--Outfitter:DebugMessage("ShoppingLinkIsShown: Comparing GameTooltip %s to %s", tostring(vTooltipLink):gsub("|", "||"), tostring(vLink):gsub("|", "||"))

	if self:ItemsAreEquivalent(pItemInfo, vTooltipItemInfo) then
		return true
	end

	for vIndex = 1, 100 do
		local vTooltip = _G["ShoppingTooltip"..vIndex]

		if not vTooltip then
			break
		end

		if not vTooltip:IsVisible() then
			break
		end

		local _, vTooltipLink = vTooltip:GetItem()
		local vTooltipItemInfo = Outfitter:GetItemInfoFromLink(vTooltipLink)

		--Outfitter:DebugMessage("ShoppingLinkIsShown: Comparing ShoppingTooltip%d %s to %s", vIndex, tostring(vTooltipLink):gsub("|", "||"), tostring(vLink):gsub("|", "||"))
		--Outfitter:DebugTable(vTooltipItemInfo, "ItemInfo")

		if self:ItemsAreEquivalent(pItemInfo, vTooltipItemInfo) then
			return true
		end
	end

	for vIndex, vTooltip in ipairs(self.Tooltips) do
		if vIndex > self.NumTooltipsShown then
			break
		end

		local _, vTooltipLink = vTooltip:GetItem()
		local vTooltipItemInfo = Outfitter:GetItemInfoFromLink(vTooltipLink)

		--Outfitter:DebugMessage("ShoppingLinkIsShown: Comparing OutfitterShoppingTooltip%d %s to %s", vIndex, tostring(vTooltipLink):gsub("|", "||"), tostring(vLink):gsub("|", "||"))

		if self:ItemsAreEquivalent(pItemInfo, vTooltipItemInfo) then
			return true
		end
	end

	return false
end

function Outfitter._ExtendedCompareTooltip:AddShoppingLink(pTitle, pItemName, pLink)
	self.NumTooltipsShown = self.NumTooltipsShown + 1

	local vTooltip = self.Tooltips[self.NumTooltipsShown]

	if not vTooltip then
		vTooltip = CreateFrame("GameTooltip", "OutfitterCompareTooltip"..self.NumTooltipsShown, UIParent, "ShoppingTooltipTemplate")
		vTooltip:SetOwner(UIParent, "ANCHOR_NONE")
		vTooltip:Hide()

		self.Tooltips[self.NumTooltipsShown] = vTooltip
	else
		local vTooltipName = vTooltip:GetName()
		local vLine = 2

		while true do
			local vTextLeft = _G[vTooltipName.."TextLeft"..vLine]

			if not vTextLeft then
				break
			end

			local vPoint, vRelativeTo, vRelativePoint, vOffsetX, vOffsetY = vTextLeft:GetPoint(1)

			if not vPoint then
				break
			end

			vTextLeft:SetPoint(vPoint, vRelativeTo, vRelativePoint, 0, vOffsetY)

			vLine = vLine + 1
		end
	end

	local vTooltipName = vTooltip:GetName()

	vTooltip:SetOwner(self.AnchorToTooltip, "ANCHOR_NONE")

	if self.LeftToRight then
		vTooltip:SetPoint("TOPLEFT", self.AnchorToTooltip, "TOPRIGHT", 0, 0)
	else
		vTooltip:SetPoint("TOPRIGHT", self.AnchorToTooltip, "TOPLEFT", 0, 0)
	end

	vTooltip:SetHyperlink(pLink)

	-- Shift all lines down by one

	self:ShiftTooltipDown(vTooltip)

	-- Set the first line to the outfit name and Outfitter label

	local vTextLeft, vTextRight = _G[vTooltipName.."TextLeft1"], _G[vTooltipName.."TextRight1"]

	vTextLeft:SetText(pTitle)
	vTextLeft:SetTextColor(0.5, 0.5, 0.5)

	vTextRight:SetText(Outfitter.cTitle)
	vTextRight:SetTextColor(0.5, 0.5, 0.5)
	vTextRight:Show()

	-- Call LibTipHooker clients so they can add extra info

	if Outfitter.LibTipHooker.HandlerList.item then
		for vHandler in pairs(Outfitter.LibTipHooker.HandlerList.item) do
			vHandler(vTooltip, pItemName, pLink)
		end
	end

	-- Add "Used by:" info (should integrate this with LibTipHooker)

	local vItemInfo = Outfitter:GetItemInfoFromLink(pLink)

	if vItemInfo then
		Outfitter:AddOutfitsUsingItemToTooltip(vTooltip, vItemInfo)
	end

	vTooltip:Show()

	self.AnchorToTooltip = vTooltip
end

function Outfitter._ExtendedCompareTooltip:ShiftTooltipDown(tooltip)
	local name = tooltip:GetName()
	local origNumLines = tooltip:NumLines()

	-- Make room for the last line
	tooltip:AddLine("Test", NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1)

	-- Shift all lines down, starting from the bottom and going up
	for line = origNumLines, 1, -1 do
		local textLeft, textRight = _G[name.."TextLeft"..line], _G[name.."TextRight"..line]
		local nextTextLeft, nextTextRight = _G[name.."TextLeft"..(line + 1)], _G[name.."TextRight"..(line + 1)]

		self:CopyFontString(textLeft, nextTextLeft, line > 3)
		self:CopyFontString(textRight, nextTextRight, false)
	end

	-- Re-position any textures being used
	for line = 1, tooltip:NumLines() do
		local texture = _G[name.."Texture"..line]

		if not texture then
			break
		end

		if texture:IsVisible() then
			local point, relativeTo, relativePoint, offsetX, offsetY = texture:GetPoint(1)

			relativeTo = relativeTo:GetName():gsub("(%d+)$", function (index) return tonumber(index) + 1 end)

			texture:ClearAllPoints()
			texture:SetPoint(point, relativeTo, relativePoint, offsetX, offsetY)
		end
	end
end

function Outfitter._ExtendedCompareTooltip:CopyFontString(from, to, copyWidth)
	-- to:SetFont(from:GetFont())
	-- to:SetJustifyH(from:GetJustifyH())
	-- to:SetJustifyV(from:GetJustifyV())
	-- to:SetShadowColor(from:GetShadowColor())
	-- to:SetShadowOffset(from:GetShadowOffset())
	-- to:SetSpacing(from:GetSpacing())
	to:SetTextColor(from:GetTextColor())
	to:SetText(from:GetText())
	if copyWidth and from:GetWidth() then
		to:SetWidth(from:GetWidth())
	end
end

function Outfitter:NewEmptyOutfit(pName)
	local vOutfit =
	{
		Name = pName,
		Items = {},
	}

	setmetatable(vOutfit, Outfitter._OutfitMetaTable)

	return vOutfit
end

function Outfitter:GetIconIndex(pTexture)
	if not pTexture then
		return
	end
	if type(pTexture) == "number" then
		return pTexture
	end

	local _, _, vTexture = pTexture:find("([^\\]*)$")
	vTexture = vTexture:lower()

	for vIndex = INVSLOT_FIRST_EQUIPPED, INVSLOT_LAST_EQUIPPED do
		local vTexture2 = GetInventoryItemTexture("player", vIndex)

		if vTexture2 then
			_, _, vTexture2 = vTexture2:find("([^\\]*)$")

			if vTexture2:lower() == vTexture then
				return -vIndex
			end
		end
	end

	local vMacroIcons = {INV_MISC_QUESTIONMARK}
	GetMacroItemIcons(vMacroIcons)
	GetMacroIcons(vMacroIcons)
	local vNumIcons = #vMacroIcons

	for vIndex = 1, vNumIcons do
		local vTexture2 = vMacroIcons[vIndex]
		_, _, vTexture2 = vTexture2:find("([^\\]*)$")
		if vTexture2:lower() == vTexture then
			return vIndex
		end
	end
end

function Outfitter:GetMountIDByName(name)
	local lowerName = name:lower()
	local mountIDs = C_MountJournal.GetMountIDs()
	for _, mountID in ipairs(mountIDs) do
		local mountName = C_MountJournal.GetMountInfoByID(mountID)
		if mountName:lower() == lowerName then
			return mountID
		end
	end
end

function Outfitter:GetCompanionIDByName(nameToFind)
	return
--[[	local numPets = C_PetJournal.GetNumPets(false)
	local lowerName = nameToFind:lower()
	for index = 1, numPets do
		local petID, speciesID, isOwned, customName, level, favorite, isRevoked, name = C_PetJournal.GetPetInfoByIndex(index, false)
		if name:lower() == lowerName then
			return petID
		end
	end
	Outfitter:DebugMessage("GetCompanionByName(%s): Not found", tostring(nameToFind))--]]
end

function Outfitter:GetSummonedCompanionID()
	return C_PetJournal.GetSummonedPetGUID()
end

function Outfitter:SummonCompanionByGUID(pID, pDelay)
	Outfitter:DebugMessage("SummonCompanionByGUID: %s delay =%s", tostring(pID), tostring(pDelay))
	if not pID then return end
	self.SummonPetID = pID
	self.DismissPetID = nil
	if pDelay then
		Outfitter.SchedulerLib:ScheduleTask(pDelay or 2, self.SynchronizeCompanionState, self)
	else
		self:SynchronizeCompanionState()
	end
end

function Outfitter:SummonCompanionByName(pName, pDelay)
	Outfitter:DebugMessage("SummonCompanionByName(%s, %s)", tostring(pName), tostring(pDelay))
	local vPetID = self:GetCompanionIDByName(pName)
	if not vPetID then return false end
	self:SummonCompanionByGUID(vPetID, pDelay)
	return true
end

function Outfitter:DismissCompanionByGUID(pID, pDelay)
	Outfitter:DebugMessage("DismissCompanionByGUID: %s delay =%s", tostring(pID), tostring(pDelay))
	if not pID then return end

	-- Cancel an existing summon request if possible
	if pID == self.SummonPetID then
		self.SummonPetID = nil
		return
	end

	-- Save the desired state
	self.DismissPetID = pID
	self.SummonPetID = nil

	-- Synchronize the state or schedule synchronization if desired
	if pDelay then
		Outfitter.SchedulerLib:ScheduleTask(pDelay or 2, self.SynchronizeCompanionState, self)
	else
		self:SynchronizeCompanionState()
	end
end

function Outfitter:DismissCompanionByName(pName)
	Outfitter:DebugMessage("DismissCompanionByName(%s)", tostring(pName))
	local vPetID = self:GetCompanionIDByName(pName)
	if not vPetID then return false end
	self:DismissCompanionByGUID(vPetID)
	return true
end

function Outfitter:CanSummonOrDismissCompanion()
	if IsFlying()
	or self.InCombat
	or self.IsDead
	or self.IsFeigning
	or self.IsCasting
	or self.IsChanneling
	or (GetTime() - self.SummonPetByGUIDTime < 3) then
		return false
	end
	return true
end

function Outfitter:SynchronizeCompanionState()
	-- Just return if we're not trying to summon or dismiss a pet
	if not self.SummonPetID and not self.DismissPetID then
		Outfitter:DebugMessage("SynchronizeCompanionState: no pet ID to summon/dismiss. Canceling.")
		return
	end

	-- If the state can't be adjusted right now (ie, flying or channeling/casting)
	-- then reschedule
	if not self:CanSummonOrDismissCompanion() then
		Outfitter.SchedulerLib:ScheduleTask(1, function() self:SynchronizeCompanionState() end)
		return
	end

	local vSummonedPetID = C_PetJournal.GetSummonedPetGUID()
	Outfitter:DebugMessage("SynchronizeCompanionState: SummonedPetID = %s", tostring(vSummonedPetID))

	-- If there's not a pet summoned but there's a pet to be dismissed
	-- then reschedule in order to watch for the pet getting auto-summoned
	-- by the game.  For example, if you summon Ragnaros upon opening the
	-- cooking window, then mount up and fly off without closing the window,
	-- there will no longer be a pet summoned.  If you then close the cooking
	-- window it will try to dismiss Ragnaros but won't see anything currently
	-- summoned (the game auto-dismissed Ragnaros when you started flying).
	-- We want to watch for a pet to be auto-summoned by the game and then dismiss
	-- it if it's the one we were trying to get rid of

	if self.DismissPetID then
		if not vSummonedPetID then
			Outfitter:DebugMessage("SynchronizeCompanionState: Rescheduling dismissal of %s because no pet is summoned", tostring(self.DismissPetID))
			Outfitter.SchedulerLib:ScheduleTask(1, function() self:SynchronizeCompanionState() end)
		else
			if vSummonedPetID == self.DismissPetID then
				C_PetJournal.SummonPetByGUID(self.DismissPetID)
			end
			-- Clear the ID since the pet has now been dismissed or some other pet was summoned
			Outfitter:DebugMessage("Finished dismissing pet %s", tostring(self.DismissPetID))
			self.DismissPetID = nil
			return
		end
	end

	if self.SummonPetID then
		if vSummonedPetID ~= self.SummonPetID then
			Outfitter:DebugMessage("SynchronizeCompanionState: Summoning %s", tostring(self.SummonPetID))
			C_PetJournal.SummonPetByGUID(self.SummonPetID)
		end
		-- Clear the ID since the desired pet is the summoned pet
		Outfitter:DebugMessage("Finished summoning pet %s", tostring(self.SummonPetID))
		self.SummonPetID = nil
		return
	end
end

function Outfitter:GetTalentTreeName(pIndex)
	--local _, vName = GetSpecializationInfo(pIndex)
	local vName1, _, vTab1 = GetTalentTabInfo(1)
	local vName2, _, vTab2 = GetTalentTabInfo(2)
	local vName3, _, vTab3 = GetTalentTabInfo(3)
	if vTab1 >= vTab2 and vTab1 >= vTab3 then

		--print("vTab1")
		return "1"
	elseif vTab2 >= vTab1 and vTab2 >= vTab3 then

		--print("vTab2")
		return "2"
	elseif vTab3 >= vTab1 and vTab3 >= vTab2 then

		--print("vTab3")
		return "3"
	else

		--print("vTab4")
		return "4"
	end
	--return vName
end

--This function overwrites a blizzard API call and causes many conflicts with other addons
--It is also not used anywhere in the entirety of Outfitter from what I can tell
--[[
function GetSpecialization()
	--local _, vName = GetSpecializationInfo(pIndex)
	local vName1, _, vTab1 = GetTalentTabInfo(1)
	local vName2, _, vTab2 = GetTalentTabInfo(2)
	local vName3, _, vTab3 = GetTalentTabInfo(3)
	if vTab1 >= vTab2 and vTab1 >= vTab3 then

		--print("vTab1")
		return "1"
	elseif vTab2 >= vTab1 and vTab2 >= vTab3 then

		--print("vTab2")
		return "2"
	elseif vTab3 >= vTab1 and vTab3 >= vTab2 then

		--print("vTab3")
		return "3"
	elseif nil then
		return nil
	else

		--print("vTab4")
		return "4"
	end
	--return vName
end
--]]

function Outfitter:Run(pText)
	local vCommand = pText:match("^(/[^%s]+)") or ""
	local vMessage

	if vCommand ~= pText then
		vMessage = pText:sub(vCommand:len() + 2);
	else
		vMessage = ""
	end

	vCommand = vCommand:upper()

	for vCommandID, vCommandFunc in pairs(SlashCmdList) do
		local vIndex = 1
		local vString = _G["SLASH_"..vCommandID..vIndex]

		while vString do
			if vString:upper() == vCommand then
				vCommandFunc(pText)
				return
			end
			vIndex = vIndex + 1
			vString = _G["SLASH_"..vCommandID..vIndex]
		end
	end

end

----------------------------------------
Outfitter._ListItem = {}
----------------------------------------

function Outfitter._ListItem:construct()
	self.OutfitMenu = _G[self:GetName().."OutfitMenu"]
	self.OutfitMenu.ParentItem = self
	self.UpdateTooltip = self.OnEnter
	self.SecureAction = _G[self:GetName().."SecureAction"]

	self.SecureAction:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	self.SecureAction:HookScript("PreClick", function (frame, ...)
		self:PreClick(...)
	end)
	self.SecureAction:HookScript("PostClick", function (frame, ...)
		self:OnClick(...)
	end)

	self:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	self:HookScript("PreClick", self.PreClick)
	self:HookScript("PostClick", self.OnClick)
	self.SecureAction:HookScript("OnEnter", function (frame, ...)
		self:OnEnter(...)
	end)
	self.SecureAction:HookScript("OnLeave", function (frame, ...)
		self:OnLeave(...)
	end)
	self:disableSecureActions()
end

function Outfitter._ListItem:disableSecureActions()
	if InCombatLockdown() then
		return
	end

	self.SecureAction:Hide()
	self.SecureAction:SetParent(UIParent)
	self.SecureAction:ClearAllPoints()
end

function Outfitter._ListItem:enableSecureActions()
	if InCombatLockdown() then
		return
	end

	self.SecureAction:Show()
	self.SecureAction:SetParent(self)
	self.SecureAction:SetAllPoints()

	-- Configure the secure button
	if self.isOutfitItem then
		self.SecureAction:SetAttribute("type", nil)
		self.SecureAction:SetAttribute("target-bag", self.outfitItem.Location.BagIndex)
		self.SecureAction:SetAttribute("target-slot", self.outfitItem.Location.BagSlotIndex)
	else
		self.SecureAction:SetAttribute("type", nil)
		self.SecureAction:SetAttribute("target-bag", nil)
		self.SecureAction:SetAttribute("target-slot", nil)
	end
end

function Outfitter._ListItem:suspendSecureActions()
	if self.isOutfitItem then
		self:disableSecureActions()
		self.suspendDidDisableActions = true
	else
		self.suspendDidDisableActions = nil
	end
end

function Outfitter._ListItem:resumeSecureActions()
	if self.suspendDidDisableActions then
		self:enableSecureActions()
		self.suspendDidDisableActions = nil
	end
end

function Outfitter._ListItem:SetToOutfit(pOutfit, pCategoryID, pOutfitIndex, pInventoryCache)
	local vItemName = self:GetName()
	local vOutfitFrameName = vItemName.."Outfit"
	local vOutfitFrame = _G[vOutfitFrameName]
	local vItemFrame = _G[vItemName.."Item"]
	local vCategoryFrame = _G[vItemName.."Category"]
	local vMissingItems, vBankedItems = pInventoryCache:GetMissingItems(pOutfit)

	vOutfitFrame:Show()
	vCategoryFrame:Hide()
	vItemFrame:Hide()

	local vItemSelectedCheckmark = _G[vOutfitFrameName.."Selected"]
	local vItemNameField = _G[vOutfitFrameName.."Name"]
	local vItemMenu = _G[vOutfitFrameName.."Menu"]
	local vItemServerButton = _G[vOutfitFrameName.."ServerButton"]

	vItemSelectedCheckmark:Show()

	if Outfitter:WearingOutfit(pOutfit) then
		vItemSelectedCheckmark:SetChecked(true)
	else
		vItemSelectedCheckmark:SetChecked(nil)
	end

	vItemServerButton:SetChecked(pOutfit.StoredInEM)

	self.MissingItems = vMissingItems
	self.BankedItems = vBankedItems

	if pOutfit.Disabled then
		vItemNameField:SetText(format(Outfitter.cDisabledOutfitName, pOutfit:GetName()))
		self.DefaultColor = GRAY_FONT_COLOR
	else
		vItemNameField:SetText(pOutfit:GetName())
		if vMissingItems then
			self.DefaultColor = RED_FONT_COLOR
		elseif vBankedItems then
			self.DefaultColor = Outfitter.BANKED_FONT_COLOR
		else
			self.DefaultColor = NORMAL_FONT_COLOR
		end
	end

	vItemNameField:SetTextColor(self.DefaultColor.r, self.DefaultColor.g, self.DefaultColor.b)

	vItemMenu:Show()

	self.isCategory = false
	self.isOutfitItem = false
	self.outfitItem = nil
	self.categoryID = pOutfit.CategoryID
	self.outfitIndex = pOutfitIndex

	self:Show()

	-- Show the script icon if there's one attached

	local vScriptIcon = _G[vOutfitFrameName.."ScriptIcon"]

	if pOutfit.ScriptID or pOutfit.Script then
		vScriptIcon:SetTexture("Interface\\Addons\\Outfitter\\Textures\\Gear")

		if Outfitter.Settings.Options.DisableAutoSwitch or pOutfit.Disabled then
			vScriptIcon:SetVertexColor(0.4, 0.4, 0.4)
		else
			vScriptIcon:SetVertexColor(1, 1, 1)
		end

		vScriptIcon:Show()
	else
		vScriptIcon:Hide()
	end

	-- Update the highlighting

	if Outfitter.SelectedOutfit == pOutfit then
		OutfitterMainFrameHighlight:SetPoint("TOPLEFT", self, "TOPLEFT", 0, 0)
		OutfitterMainFrameHighlight:Show()
	end

	-- Configure the secure button
	self:disableSecureActions()
end

function Outfitter._ListItem:SetToItem(pOutfitItem)
	local vItemName = self:GetName()
	local vCategoryFrameName = vItemName.."Category"
	local vItemFrameName = vItemName.."Item"
	local vItemFrame = _G[vItemFrameName]
	local vOutfitFrame = _G[vItemName.."Outfit"]
	local vCategoryFrame = _G[vCategoryFrameName]

	self.isOutfitItem = true
	self.isCategory = false
	self.outfitItem = pOutfitItem

	vItemFrame:Show()
	vOutfitFrame:Hide()
	vCategoryFrame:Hide()

	local vItemNameField = _G[vItemFrameName.."Name"]
	local vItemIcon = _G[vItemFrameName.."Icon"]

	vItemNameField:SetText(pOutfitItem.Name)

	if pOutfitItem.Quality then
		self.DefaultColor = ITEM_QUALITY_COLORS[(pOutfitItem.Quality ~= 7 and pOutfitItem.Quality) or 6]
	else
		self.DefaultColor = GRAY_FONT_COLOR
	end

	if pOutfitItem.Texture then
		local texture = pOutfitItem.Texture	-- because some outfits are actually deeper tables
		if type(pOutfitItem.Texture) == "table" then texture = pOutfitItem.Texture.iconFileID end
		--vItemIcon:SetTexture(pOutfitItem.Texture)
		vItemIcon:SetTexture(texture)
		vItemIcon:Show()
	else
		vItemIcon:Hide()
	end

	vItemNameField:SetTextColor(self.DefaultColor.r, self.DefaultColor.g, self.DefaultColor.b)

	-- Configure the secure button
	self:enableSecureActions()

	self:Show()
end

function Outfitter._ListItem:SetToCategory(pCategoryID)
	local vCategoryName = Outfitter["c"..pCategoryID.."Outfits"]
	local vItemName = self:GetName()
	local vCategoryFrameName = vItemName.."Category"
	local vOutfitFrame = _G[vItemName.."Outfit"]
	local vItemFrame = _G[vItemName.."Item"]
	local vCategoryFrame = _G[vCategoryFrameName]

	vOutfitFrame:Hide()
	vCategoryFrame:Show()
	vItemFrame:Hide()

	local vItemNameField = _G[vCategoryFrameName.."Name"]
	local vExpandButton = _G[vCategoryFrameName.."Expand"]

	self.MissingItems = nil
	self.BankedItems = nil

	if Outfitter.Collapsed[pCategoryID] then
		vExpandButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")
	else
		vExpandButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up")
	end

	vItemNameField:SetText(vCategoryName)

	self.isCategory = true
	self.isOutfitItem = false
	self.outfitItem = nil
	self.categoryID = pCategoryID

	-- Configure the secure button
	self:disableSecureActions()

	self:Show()
end

function Outfitter._ListItem:SetTextColor(r, g, b)
	local nameField

	if self.isCategory then
		nameField = _G[self:GetName().."CategoryName"]
	else
		nameField = _G[self:GetName().."OutfitName"]
	end

	nameField:SetTextColor(r, g, b)
end

function Outfitter._ListItem:PreClick(button, down)
	self.usingSpell = SpellCanTargetItem() or SpellCanTargetItemID()
end

function Outfitter._ListItem:OnClick(button, down)
	if down or self.usingSpell then
		return
	end

	if self.isCategory then
		local vCategoryOutfits = Outfitter.Settings.Outfits[self.categoryID]

		Outfitter.Collapsed[self.categoryID] = not Outfitter.Collapsed[self.categoryID]
		Outfitter.DisplayIsDirty = true
	elseif self.isOutfitItem then
		if button == "LeftButton" then
			Outfitter:PickupItemLocation(self.outfitItem.Location)
			StackSplitFrame:Hide()
		else
			if MerchantFrame:IsShown() and MerchantFrame.selectedTab == 2 then
				-- Don't sell the item if the buyback tab is selected
				return
			else
				if self.outfitItem.Location.BagIndex then
					C_Container.UseContainerItem(self.outfitItem.Location.BagIndex, self.outfitItem.Location.BagSlotIndex)
					StackSplitFrame:Hide()
				end
			end
		end
	else
		local outfit = self:GetOutfit()
		if not outfit then
			Outfitter:TestMessage("outfit not found")
			-- Error: outfit not found
			return
		end

		if button == "LeftButton" then
			outfit.Disabled = nil
			Outfitter:WearOutfit(outfit)
		else
			Outfitter:ToggleOutfitMenuAtCursor(outfit)
		end
	end

	Outfitter:Update(true)
end

function Outfitter._ListItem:OnEnter()
	self:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)

	if self.isCategory then
		local vDescription = Outfitter.cCategoryDescriptions[self.categoryID]

		if vDescription then
			local vCategoryName = Outfitter["c"..self.categoryID.."Outfits"]
			Outfitter.AddNewbieTip(self, vCategoryName, 1.0, 1.0, 1.0, vDescription, 1)
		end

		ResetCursor()
	elseif self.isOutfitItem then
		local vHasCooldown, vRepairCost

		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")

		if self.outfitItem.Location.SlotName
		or self.outfitItem.Location.SlotID then
			if not self.outfitItem.Location.SlotID then
				self.outfitItem.Location.SlotID = Outfitter.cSlotIDs[self.outfitItem.Location.SlotName]
			end

			GameTooltip:SetInventoryItem("player", self.outfitItem.Location.SlotID)
		elseif self.outfitItem.Location.BagIndex == -1 then
			GameTooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(self.outfitItem.Location.BagSlotIndex))
		else
			vHasCooldown, vRepairCost = GameTooltip:SetBagItem(self.outfitItem.Location.BagIndex, self.outfitItem.Location.BagSlotIndex)
		end

		GameTooltip:Show()

		if InRepairMode() and (vRepairCost and vRepairCost > 0) then
			GameTooltip:AddLine(TEXT(REPAIR_COST), "", 1, 1, 1)
			SetTooltipMoney(GameTooltip, vRepairCost)
			GameTooltip:Show()
		elseif MerchantFrame:IsShown() and MerchantFrame.selectedTab == 1 then
			if self.outfitItem.Location.BagIndex then
				C_Container.ShowContainerSellCursor(self.outfitItem.Location.BagIndex, self.outfitItem.Location.BagSlotIndex)
			end
		else
			ResetCursor()
		end
	else
		local vOutfit = self:GetOutfit()

		Outfitter:ShowOutfitTooltip(vOutfit, self, self.MissingItems, self.BankedItems)
	end
end

function Outfitter._ListItem:OnLeave()
	if self.isCategory then
		self:SetTextColor(1, 1, 1)
	else
		self:SetTextColor(self.DefaultColor.r, self.DefaultColor.g, self.DefaultColor.b)
	end

	GameTooltip:Hide()
end

function Outfitter._ListItem:GetOutfit()
	if self.isCategory then
		return nil
	end

	return Outfitter:GetIndexedOutfit(self.categoryID, self.outfitIndex)
end

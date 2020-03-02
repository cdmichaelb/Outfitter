----------------------------------------
-- Stat categories
----------------------------------------

Outfitter.StatCategories = {}

function Outfitter:GetCategoryByID(pCategoryID)
	for _, vCategory in ipairs(Outfitter.StatCategories) do
		if vCategory.CategoryID == pCategoryID then
			return vCategory
		end
	end
end

function Outfitter:GetStatByID(pStatID)
	for _, vCategory in ipairs(Outfitter.StatCategories) do
		local vNumStats = vCategory:GetNumStats()
		
		for vStatIndex = 1, vNumStats do
			local vStat = vCategory:GetIndexedStat(vStatIndex)
			
			if vStat.ID == pStatID then
				return vStat
			end
		end
	end
end

function Outfitter:GetStatIDName(pStatID)
	local vStat = self:GetStatByID(pStatID)
	
	return vStat and vStat.Name
end

function Outfitter:GetStatConfigName(pStatConfig)
	if not pStatConfig then
		return
	end
	
	local vName
	
	for _, vStatConfig in ipairs(pStatConfig) do
		local vStat = self:GetStatByID(vStatConfig.StatID)
		
		if not vStat then
			return -- One of the stats is missing, return nothing
		end
		
		if not vName then
			vName = vStat.Name
		else
			vName = vName..", "..vStat.Name
		end
	end
	
	return vName
end

function Outfitter:CalcOutfitScore(pOutfit, pStat)
	if pStat.GetOutfitScore then
		return pStat:GetOutfitScore(pOutfit)
	elseif pStat.GetItemScore then
		local vTotalScore = 0
		local vItems = pOutfit:GetItems()

		for _, vItem in pairs(vItems) do
			local vItemScore = pStat:GetItemScore(vItem)
			
			if vItemScore then
				vTotalScore = vTotalScore + vItemScore
			end
		end
		
		return vTotalScore
	else
		return 0
	end
end

function Outfitter:ConstrainScore(pScore, pStatInfo)
	if pStatInfo.MinValue then
		-- If the score doesn't meet the minimum then set it to zero
		-- so that it doesn't affect the final outfit
		
		if pScore < pStatInfo.MinValue then
			pScore = 0
		
		-- Set it to the minimum so that higher scores aren't better
		-- This keeps the score as close to minValue as possible
		
		else
			pScore = pStatInfo.MinValue
		end
	elseif pStatInfo.MaxValue then
		-- If the score is more than the max then set it to zero
		-- so that it doesn't affect the final outfit
		
		if pScore > pStatInfo.MaxValue then
			pScore = 0
		end
	end
	
	return pScore
end

function Outfitter:GetMultiStatScore(pOutfit, pParams)
	local vCombiScores = {}
	
	for vIndex, vStatInfo in ipairs(pParams) do
		vCombiScores[vIndex] = self:CalcOutfitScore(pOutfit, vStatInfo.Stat) or 0
	end
	
	return vCombiScores
end

----------------------------------------
Outfitter._SimpleStatCategory = {}
----------------------------------------

function Outfitter._SimpleStatCategory:GetNumStats()
	return #self.Stats
end

function Outfitter._SimpleStatCategory:GetIndexedStat(pIndex)
	return self.Stats[pIndex]
end

Outfitter._SimpleStatCategoryMetaTable = {__index = Outfitter._SimpleStatCategory}

----------------------------------------
Outfitter._SimpleStat = {}
----------------------------------------

function Outfitter._SimpleStat:GetItemScore(pItem)
	local vScore

	-- Try to use a cached value
	if pItem.ScoreCache then
		vScore = pItem.ScoreCache[self]
	end

	-- Calculate the value if the cache wasn't available
	if not vScore then
		vScore = self:GetUncachedItemScore(pItem) or 0
		
		-- Create the cache table if necessary
		if not pItem.ScoreCache then
			pItem.ScoreCache = {}
			setmetatable(pItem.ScoreCache, {__mode = "k"}) -- use weak keys
		end

		-- Remember the score
		pItem.ScoreCache[self] = vScore
	end

	-- Done
	return vScore
end

function Outfitter._SimpleStat:GetUncachedItemScore(pItem)
	-- Parse the stats
	local vStats = Outfitter.ItemStatsLib:statsForLink(pItem.Link)
	
	-- Leave if no stats
	if not vStats then
		return
	end
	
	-- Leave if the item is too high-level
	if vStats.minLevel > UnitLevel("player") then
		return
	end

	-- Total stats
	if self.ID == "TOTAL_STATS" then
		return (vStats.values.STA or 0)
		     + (vStats.values.STR or 0)
		     + (vStats.values.INT or 0)
		     + (vStats.values.AGI or 0)
		     + (vStats.values.MAS or 0)
		     + (vStats.values.HAS or 0)
		     + (vStats.values.CRI or 0)
		     + (vStats.values.VER or 0)
		     + (vStats.values.SPI or 0)


	-- Static stat values
	else
		local value = tonumber(vStats.values[self.ID])
		return value
	end
end

Outfitter._SimpleStatMetaTable = {__index = Outfitter._SimpleStat}

----------------------------------------
-- Simple stats
----------------------------------------

Outfitter.SimpleStatCategories =
{
	{
		CategoryID = "Stat",
		Name = PLAYERSTAT_BASE_STATS,
		Stats =
		{
			{ID = "STA", Name = Outfitter.ItemStatsLib.strings.Stamina},
			{ID = "STR", Name = Outfitter.ItemStatsLib.strings.Strength},
			{ID = "INT", Name = Outfitter.ItemStatsLib.strings.Intellect},
			{ID = "AGI", Name = Outfitter.ItemStatsLib.strings.Agility},

			{ID = "SPI", Name = Outfitter.ItemStatsLib.strings.Spirit},
			{ID = "HAS", Name = Outfitter.ItemStatsLib.strings.Haste},
			{ID = "VER", Name = Outfitter.ItemStatsLib.strings.Versatility},
			{ID = "MAS", Name = Outfitter.ItemStatsLib.strings.Mastery},
			{ID = "CRI", Name = Outfitter.ItemStatsLib.strings.CriticalStrike},
			{ID = "TOTAL_STATS", Name = Outfitter.cTotalStatsName},
			{ID = "ITEM_LEVEL", Name = Outfitter.cItemLevelName},
		},
	},
	{
		CategoryID = "Melee",
		Name = PLAYERSTAT_MELEE_COMBAT,
		Stats =
		{
			--{ID = "MELEE_DMG"},
			--{ID = "MELEE_HASTE_RATING"},
			--{ID = "AP"},
			--{ID = "RANGED_AP"},
			{ID = ITEM_MOD_HIT_RATING_SHORT, Name = Outfitter.ItemStatsLib.strings.Hit},
			--{ID = "MELEE_CRIT_RATING"},
			--{ID = "EXPERTISE_RATING"},
			--{ID = "ARMOR_PENETRATION_RATING"},
		},
	},
	{
		CategoryID = "Ranged",
		Name = PLAYERSTAT_RANGED_COMBAT,
		Stats =
		{
			--{ID = "RANGED_DMG"},
			--{ID = "RANGED_HASTE_RATING"},
			--{ID = "RANGED_AP"},
			--{ID = "RANGED_HIT_RATING"},
			--{ID = "RANGED_CRIT_RATING"},
		},
	},
	{
		CategoryID = "Spell",
		Name = PLAYERSTAT_SPELL_COMBAT,
		Stats =
		{
			--{ID = "SPELL_DMG"},
			--{ID = "HEAL"},
			{ID = ITEM_MOD_HIT_SPELL_RATING_SHORT, Name = Outfitter.ItemStatsLib.strings.SpellHit},
			--{ID = "SPELL_CRIT_RATING"},
			--{ID = "SPELL_HASTE_RATING"},
			--{ID = "SPELLPEN"},
			--{ID = "MANA"},
			--{ID = "MANA_REG"},
		},
	},
--	{
--		CategoryID = "Defense",
--		Name = PLAYERSTAT_DEFENSES,
--		Stats =
--		{
--			{ID = "ARMOR"},
--			{ID = "DEFENSE_RATING"},
--			{ID = "DODGE_RATING"},
--			{ID = "PARRY_RATING"},
--			{ID = "BLOCK_RATING"},
--			{ID = "RESILIENCE_RATING"},
--			{ID = "HEALTH"},
--			{ID = "HEALTH_REG"},
--		},
--	},
	{
		CategoryID = "Resist",
		Name = Outfitter.cResistCategory,
		Stats =
		{
			{ID = RESISTANCE6_NAME, Name = Outfitter.ItemStatsLib.strings.ArcaneResist},
			{ID = RESISTANCE2_NAME, Name = Outfitter.ItemStatsLib.strings.FireResist},
			{ID = RESISTANCE4_NAME, Name = Outfitter.ItemStatsLib.strings.FrostResist},
			{ID = ESISTANCE3_NAME, Name = Outfitter.ItemStatsLib.strings.NatureResist}, --Miv
			{ID = RESISTANCE5_NAME, Name = Outfitter.ItemStatsLib.strings.ShadowResist},
		},
	},
--	{
--		CategoryID = "Trade",
--		Name = Outfitter.cTradeCategory,
--		Stats =
--		{
--			{ID = "FISHING"},
--			{ID = "HERBALISM"},
--			{ID = "MINING"},
--			{ID = "SKINNING"},
--			{ID = "RUN_SPEED"},
--			{ID = "MOUNT_SPEED"},
--		},
--	},
}

----------------------------------------
-- Install the simple stats
----------------------------------------

for _, vStatCategory in ipairs(Outfitter.SimpleStatCategories) do
	setmetatable(vStatCategory, Outfitter._SimpleStatCategoryMetaTable)
	
	for _, vStat in ipairs(vStatCategory.Stats) do
		if not vStat.Name then
			vStat.Name = vStat.ID
		end
		
		setmetatable(vStat, Outfitter._SimpleStatMetaTable)
	end
	
	table.insert(Outfitter.StatCategories, vStatCategory)
end

----------------------------------------
Outfitter.PawnScalesCategory =
----------------------------------------
{
	Name = "Pawn",
	CategoryID = "Pawn",
}

function Outfitter.PawnScalesCategory:GetNumStats()
	local vScaleNames = PawnGetAllScales()
	
	if self.Scales then
		for vKey, _ in pairs(self.Scales) do
			self.Scales[vKey] = nil
		end
	else
		self.Scales = {}
	end
	
	for _, vScaleName in ipairs(vScaleNames) do
		if PawnIsScaleVisible(vScaleName) then
			local vScale =
			{
				Name = vScaleName,
				ID = "Pawn_"..vScaleName,
			}
			
			setmetatable(vScale, Outfitter._PawnScaleStatMetaTable)
			
			table.insert(self.Scales, vScale)
		end
	end
	
	return #self.Scales
end

function Outfitter.PawnScalesCategory:GetIndexedStat(pIndex)
	Outfitter:DebugTable(self.Scales[pIndex], "Stat "..pIndex)
	return self.Scales[pIndex]
end

----------------------------------------
Outfitter._PawnScaleStat = {}
----------------------------------------

function Outfitter._PawnScaleStat:GetItemScore(pItem)
	-- Ignore nil items
	if not pItem or not pItem.Link then
		return
	end
	
	-- Get the score
	local vScore

	-- Try to use a cached value
	if pItem.ScoreCache then
		vScore = pItem.ScoreCache[self]
	end

	-- Calculate the value if the cache wasn't available
	if not vScore then
		-- Parse the stats
		local vStats = Outfitter.ItemStatsLib:statsForLink(pItem.Link)
	
		-- Score zero if no stats
		if not vStats then
			vScore = 0

		-- Ignore the item if it's too high level
		elseif vStats.minLevel > UnitLevel("player") then
			vScore = 0

		-- Calculate the Pawn score
		else
			local vItemData = PawnGetItemData(pItem.Link)

			-- Score is zero if no item data
			if not vItemData then
				vScore = 0

			-- Search for the scale we're using
			else
				for _, vEntry in pairs(vItemData.Values) do
					local vScaleName, vValue, UnenchantedValue = vEntry[1], vEntry[2], vEntry[3]
		
					if vScaleName == self.Name then
						vScore = vValue
						break
					end
				end
			end
		end
		
		-- Create the cache table if necessary
		if not pItem.ScoreCache then
			pItem.ScoreCache = {}
			setmetatable(pItem.ScoreCache, {__mode = "k"}) -- use weak keys
		end

		-- Remember the score
		pItem.ScoreCache[self] = vScore
	end

	-- Done
	return vScore
end

Outfitter._PawnScaleStatMetaTable = {__index = Outfitter._PawnScaleStat}

----------------------------------------
-- Install Pawn scales
----------------------------------------

if IsAddOnLoaded("Pawn") then
	table.insert(Outfitter.StatCategories, Outfitter.PawnScalesCategory)
else
	Outfitter.EventLib:RegisterEvent("ADDON_LOADED", function (pEventID, pAddOnName)
		if pAddOnName == "Pawn" then
			table.insert(Outfitter.StatCategories, Outfitter.PawnScalesCategory)
		end
	end)
end

----------------------------------------
Outfitter.WeightsWatcherCategory =
----------------------------------------
{
	Name = "WeightsWatcher",
	CategoryID = "WW",
}

function Outfitter.WeightsWatcherCategory:GetNumStats()
	local _, vClassID = UnitClass("player")
	
	if not ww_vars.weightsList[vClassID] then
		return 0
	end
	
	local vActiveWeights = ww_charVars.activeWeights[vClassID]
	
	if not vActiveWeights then
		return 0
	end
	
	if self.ActiveWeights then
		wipe(self.ActiveWeights)
	else
		self.ActiveWeights = {}
	end
	
	for _, vWeightName in ipairs(vActiveWeights) do
		local vWeight =
		{
			Name = vWeightName,
			ID = "WW_"..vWeightName,
			ClassID = vClassID,
			Weight = vWeightName,
		}
		
		setmetatable(vWeight, Outfitter._WeightsWatcherStatMetaTable)
		
		table.insert(self.ActiveWeights, vWeight)
	end
	
	return #self.ActiveWeights
end

function Outfitter.WeightsWatcherCategory:GetIndexedStat(pIndex)
	return self.ActiveWeights[pIndex]
end

----------------------------------------
Outfitter._WeightsWatcherStat = {}
----------------------------------------

function Outfitter._WeightsWatcherStat:GetItemScore(pItem)
	return ww_weightCache[self.ClassID][self.Weight][pItem.Link]
end

Outfitter._WeightsWatcherStatMetaTable = {__index = Outfitter._WeightsWatcherStat}

----------------------------------------
-- Install WeightsWatcher
----------------------------------------

if IsAddOnLoaded("WeightsWatcher") then
	table.insert(Outfitter.StatCategories, Outfitter.WeightsWatcherCategory)
else
	Outfitter.EventLib:RegisterEvent("ADDON_LOADED", function (pEventID, pAddOnName)
		if pAddOnName == "WeightsWatcher" then
			table.insert(Outfitter.StatCategories, Outfitter.WeightsWatcherCategory)
		end
	end)
end

----------------------------------------
Outfitter._MultiStat = {}
----------------------------------------

Outfitter._MultiStat.Name = "Multiple stats"

function Outfitter._MultiStat:GetFilterStats()
	return self.FilterStats
end

function Outfitter._MultiStat:Begin(pInventoryCache)
	for _, vStatInfo in ipairs(self.Config) do
		if vStatInfo.Stat.Begin then
			vStatInfo.Stat:Begin(pInventoryCache)
		end
	end
end

function Outfitter._MultiStat:Begin(pInventoryCache)
	for _, vStatInfo in ipairs(self.Config) do
		if vStatInfo.Stat.Begin then
			vStatInfo.Stat:Begin(pInventoryCache)
		end
	end
end

function Outfitter._MultiStat:End(pInventoryCache)
	for _, vStatInfo in ipairs(self.Config) do
		if vStatInfo.Stat.End then
			vStatInfo.Stat:End(pInventoryCache)
		end
	end
end

function Outfitter._MultiStat:GetOutfitScore(pOutfit, pStatParams)
	return Outfitter:GetMultiStatScore(pOutfit, self.Config)
end

function Outfitter._MultiStat:CompareOutfits(pOldOutfit, pNewOutfit, pStatParams)
	return Outfitter:MultiStatCompare(pPreviousOutfit, pNewOutfit, self.Config)
end

Outfitter._MultiStatMetaTable = {__index = Outfitter._MultiStat}

----------------------------------------
Outfitter.TankPointsCategory =
----------------------------------------
{
	Name = "TankPoints",
	CategoryID = "TankPoints",
	Stats =
	{
		{Name = "Melee TankPoints", School = "MELEE"},
		{Name = "Ranged TankPoints", School = "RANGED"},
		{Name = "Holy TankPoints", School = "HOLY"},
		{Name = "Fire TankPoints", School = "FIRE"},
		{Name = "Nature TankPoints", School = "NATURE"},
		{Name = "Frost TankPoints", School = "FROST"},
		{Name = "Shadow TankPoints", School = "SHADOW"},
		{Name = "Arcane TankPoints", School = "ARCANE"},
	},
}

for _, vStat in ipairs(Outfitter.TankPointsCategory.Stats) do
	vStat.ID = "TP_"..vStat.School
	setmetatable(vStat, Outfitter._TankPointsStatMetaTable)
end

function Outfitter.TankPointsCategory:GetNumStats()
	return #self.Stats
end

function Outfitter.TankPointsCategory:GetIndexedStat(pIndex)
	return self.Stats[pIndex]
end

----------------------------------------
-- Install TankPoints
----------------------------------------
--[[
if IsAddOnLoaded("TankPoints") then
	table.insert(Outfitter.StatCategories, Outfitter.TankPointsCategory)
else
	Outfitter.EventLib:RegisterEvent("ADDON_LOADED", function (pEventID, pAddOnName)
		if pAddOnName == "TankPoints" then
			table.insert(Outfitter.StatCategories, Outfitter.TankPointsCategory)
		end
	end)
end
]]
----------------------------------------
-- Tank Points
----------------------------------------

function Outfitter.TankPoints_New()
	local vTankPointData = {}
	local vStatDistribution = Outfitter:GetPlayerStatDistribution()
	
	if not vStatDistribution then
		Outfitter:ErrorMessage("Missing stat distribution data for "..Outfitter.PlayerClass)
		return
	end
	
	vTankPointData.PlayerLevel = UnitLevel("player")
	vTankPointData.StaminaFactor = 1.0 -- Warlocks with demonic embrace = 1.15
	
	-- Get the base stats
	
	vTankPointData.BaseStats = {}
	
	Outfitter.Stats_AddStatValue(vTankPointData.BaseStats, "Strength", UnitStat("player", 1))
	Outfitter.Stats_AddStatValue(vTankPointData.BaseStats, "Agility", UnitStat("player", 2))
	Outfitter.Stats_AddStatValue(vTankPointData.BaseStats, "Stamina", UnitStat("player", 3))
	Outfitter.Stats_AddStatValue(vTankPointData.BaseStats, "Intellect", UnitStat("player", 4))
	Outfitter.Stats_AddStatValue(vTankPointData.BaseStats, "Spirit", UnitStat("player", 5))
	
	Outfitter.Stats_AddStatValue(vTankPointData.BaseStats, "Health", UnitHealthMax("player"))
	
	vTankPointData.BaseStats.Health = vTankPointData.BaseStats.Health - vTankPointData.BaseStats.Stamina * 10
	
	vTankPointData.BaseStats.Dodge = GetDodgeChance()
	vTankPointData.BaseStats.Parry = GetParryChance()
	vTankPointData.BaseStats.Block = GetBlockChance()
	
	local vBaseDefense, vBuffDefense = UnitDefense("player")
	Outfitter.Stats_AddStatValue(vTankPointData.BaseStats, "Defense", vBaseDefense + vBuffDefense)
	
	-- Replace the armor with the current value since that already includes various factors
	
	local vBaseArmor, vEffectiveArmor, vArmor, vArmorPosBuff, vArmorNegBuff = UnitArmor("player")
	vTankPointData.BaseStats.Armor = vEffectiveArmor
	
	Outfitter:DebugMessage("------------------------------------------")
	Outfitter:DebugTable(vTankPointData, "vTankPointData")
	
	-- Subtract out the current outfit
	
	local vCurrentOutfitStats = Outfitter.TankPoints_GetCurrentOutfitStats(vStatDistribution)
	
	Outfitter:DebugMessage("------------------------------------------")
	Outfitter:DebugTable(vCurrentOutfitStats, "vCurrentOutfitStats")
	
	Outfitter.Stats_SubtractStats(vTankPointData.BaseStats, vCurrentOutfitStats)
	
	-- Calculate the buff stats (stuff from auras/spell buffs/whatever)
	
	vTankPointData.BuffStats = {}
	
	-- Reset the cumulative values
	
	Outfitter.TankPoints_Reset(vTankPointData)
	
	Outfitter:DebugMessage("------------------------------------------")
	Outfitter:DebugTable(vTankPointData, "vTankPointData")
	
	Outfitter:DebugMessage("------------------------------------------")
	return vTankPointData
end

function Outfitter.TankPoints_Reset(pTankPointData)
	pTankPointData.AdditionalStats = {}
end

function Outfitter.TankPoints_GetTotalStat(pTankPointData, pStat)
	local vTotalStat = pTankPointData.BaseStats[pStat]
	
	if not vTotalStat then
		vTotalStat = 0
	end
	
	local vAdditionalStat = pTankPointData.AdditionalStats[pStat]
	
	if vAdditionalStat then
		vTotalStat = vTotalStat + vAdditionalStat
	end
	
	local vBuffStat = pTankPointData.BuffStats[pStat]
	
	if vBuffStat then
		vTotalStat = vTotalStat + vBuffStat
	end
	
	--
	
	return vTotalStat
end

function Outfitter.TankPoints_CalcTankPoints(pTankPointData, pStanceModifier)
	if not pStanceModifier then
		pStanceModifier = 1
	end
	
	Outfitter:DebugTable(pTankPointData, "pTankPointData")
	
	local vEffectiveArmor = Outfitter.TankPoints_GetTotalStat(pTankPointData, "Armor")
	
	Outfitter:TestMessage("Armor: "..vEffectiveArmor)
	
	local vArmorReduction = vEffectiveArmor / ((85 * pTankPointData.PlayerLevel) + 400)
	
	vArmorReduction = vArmorReduction / (vArmorReduction + 1)
	
	local vEffectiveHealth = Outfitter.TankPoints_GetTotalStat(pTankPointData, "Health")
	
	Outfitter:TestMessage("Health: "..vEffectiveHealth)
	
	Outfitter:TestMessage("Stamina: "..Outfitter.TankPoints_GetTotalStat(pTankPointData, "Stamina"))
	
	--
	
	local vEffectiveDodge = Outfitter.TankPoints_GetTotalStat(pTankPointData, "Dodge") * 0.01
	local vEffectiveParry = Outfitter.TankPoints_GetTotalStat(pTankPointData, "Parry") * 0.01
	local vEffectiveBlock = Outfitter.TankPoints_GetTotalStat(pTankPointData, "Block") * 0.01
	local vEffectiveDefense = Outfitter.TankPoints_GetTotalStat(pTankPointData, "Defense")
	
	-- Add agility and defense to dodge
	
	-- defenseInputBox:GetNumber() * 0.04 + agiInputBox:GetNumber() * 0.05

	Outfitter:TestMessage("Dodge: "..vEffectiveDodge)
	Outfitter:TestMessage("Parry: "..vEffectiveParry)
	Outfitter:TestMessage("Block: "..vEffectiveBlock)
	Outfitter:TestMessage("Defense: "..vEffectiveDefense)
	
	local vDefenseModifier = (vEffectiveDefense - pTankPointData.PlayerLevel * 5) * 0.04 * 0.01
	
	Outfitter:TestMessage("Crit reduction: "..vDefenseModifier)
	
	local vMobCrit = max(0, 0.05 - vDefenseModifier)
	local vMobMiss = 0.05 + vDefenseModifier
	local vMobDPS = 1
	
	local vTotalReduction = 1 - (vMobCrit * 2 + (1 - vMobCrit - vMobMiss - vEffectiveDodge - vEffectiveParry)) * (1 - vArmorReduction) * pStanceModifier
	
	Outfitter:TestMessage("Total reduction: "..vTotalReduction)
	
	local vTankPoints = vEffectiveHealth / (vMobDPS * (1 - vTotalReduction))
	
	return vTankPoints
	
	--[[
	Stats used in TankPoints calculation:
		Health
		Dodge
		Parry
		Block
		Defense
		Armor
	]]--
end

function Outfitter.TankPoints_GetCurrentOutfitStats(pStatDistribution)
	local vTotalStats = {}
	
	for _, vSlotName in ipairs(Outfitter.cSlotNames) do
		local vStats = Outfitter.ItemList_GetItemStats({SlotName = vSlotName})
		
		if vStats then
			Outfitter:TestMessage("--------- "..vSlotName)
			
			for vStat, vValue in pairs(vStats) do
				Outfitter.Stats_AddStatValue(vTotalStats, vStat, vValue)
			end
		end
	end
	
	return vTotalStats
end

function Outfitter.TankPoints_Test()
	local vStatDistribution = Outfitter:GetPlayerStatDistribution()
	
	local vTankPointData = Outfitter.TankPoints_New()
	local vStats = Outfitter.TankPoints_GetCurrentOutfitStats(vStatDistribution)
	
	Outfitter.Stats_AddStats(vTankPointData.AdditionalStats, vStats)
	
	local vTankPoints = Outfitter.TankPoints_CalcTankPoints(vTankPointData)
	
	Outfitter:TestMessage("TankPoints = "..vTankPoints)
end


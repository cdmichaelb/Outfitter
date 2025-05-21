----------------------------------------
-- Specialty items for outfit optimization
----------------------------------------

Outfitter.cArgentDawnTrinkets = 
{
	{Code = 13209, SubCode = 0}, -- Seal of the Dawn
	{Code = 19812, SubCode = 0}, -- Rune of the Dawn
	{Code = 12846, SubCode = 0}, -- Argent Dawn Commission
}

Outfitter.cStatIDItems =
{
	ArgentDawn = Outfitter.cArgentDawnTrinkets,
}

----------------------------------------
-- Linear optimization (item-to-item comparisons)
----------------------------------------

function Outfitter:GenerateSmartOutfit(pName, pStatConfig, pInventoryCache, pAllowEmptyOutfit, pCompletionFunc)
	pInventoryCache:ResetIgnoreItemFlags()
	if type(pStatConfig) == "string" then
		local vStatID = pStatConfig
		
		-- Backward compatibility
		if vStatID == "Fishing" then
			vStatID = "FISHING"
		end
		
		-- Hard-coded item lists
		if vStatID then
			local vStatIDItems = self.cStatIDItems[vStatID]
			
			if vStatIDItems then
				vOutfit = self:NewEmptyOutfit(pName)
				
				self:FindAndAddItemsToOutfit(vOutfit, nil, vStatIDItems, pInventoryCache)
				
				vOutfit.StatID = vStatID
				
				if pCompletionFunc then
					pCompletionFunc(vOutfit)
				end
				
				return vOutfit
			end
		end
		
		--
		
		pStatConfig = {{StatID = vStatID}}
	end
	
	-- Get the stat objects
	
	local vStatConfig = {}
	
	for _, vConfig in ipairs(pStatConfig) do
		local vStat = self:GetStatByID(vConfig.StatID)
		
		if not vStat then
			Outfitter:ErrorMessage("Unknown stat ID: %s", tostring(vConfig.StatID))
			return
		end
		table.insert(vStatConfig, {Stat = vStat, StatID = vConfig.StatID, MinValue = vConfig.MinValue, MaxValue = vConfig.MaxValue})
	end

	-- Determine if this is complex
	
	local vComplex = #vStatConfig > 1
	              or vStatConfig[1].Stat.Complex
	              or vStatConfig[1].MinValue
	              or vStatConfig[1].MaxValue
	
	--
	
	local vOutfit
	
	if vComplex then
		local vMultiStat = {Config = vStatConfig}
		
		setmetatable(vMultiStat, Outfitter._MultiStatMetaTable)
		
		vOutfit = self:FindGeneticCombination(
							pName,
							pInventoryCache,
							nil,
							vMultiStat, vStatConfig, pCompletionFunc)
	else
		vOutfit = self:NewEmptyOutfit(pName)
		
		self:AddItemsWithStatToOutfit(vOutfit, vStatConfig[1].Stat, pInventoryCache)
		
		if not pAllowEmptyOutfit
		and vOutfit:IsEmpty() then
			return nil
		end
	end
	
	if vOutfit then
		vOutfit.StatConfig = pStatConfig
		
		if pCompletionFunc then
			pCompletionFunc(vOutfit)
		end
	end
	
	return vOutfit
end

function Outfitter:AddItemsWithStatToOutfit(pOutfit, pStat, pInventoryCache)
	local vItemStats
	
	if not pInventoryCache then
		return
	end
	
	for vInventorySlot, vItems in pairs(pInventoryCache.ItemsBySlot) do
		for vIndex, vItem in ipairs(vItems) do
			-- Only consider items which aren't BoE (ie, must be already bound)
			if not vItem:GetBoE() and vItem:GetMeetsRequirements() then
				
				-- Score the item
				local vScore = pStat:GetItemScore(vItem)
				if vScore then
					
					-- Calculate the slot
					local vSlotName = vItem.MetaSlotName
					if not vSlotName then
						vSlotName = vItem.ItemSlotName
					end
					
					-- Change the slot to Weapon0 for two-handers
					if vItem.InvType == "INVTYPE_2HWEAPON"
					and not self:ItemUsesBothWeaponSlots(vItem) then
						vSlotName = "Weapon0Slot"
					end
					
					-- Compare and add the item
					self:AddOutfitStatItemIfBetter(pOutfit, vSlotName, vItem, pStat, vScore)
				end -- vScore
			end -- not BoE
		end -- for vItems
	end -- for ItemsBySlot
	
	-- Collapse the meta slots (currently just 2H vs. 1H/OH)
	self:CollapseMetaSlotsIfBetter(pOutfit, pStat)
end

function Outfitter:AddOutfitStatItemIfBetter(pOutfit, pSlotName, pItemInfo, pStat, pScore)
	local vCurrentItem = pOutfit:GetItem(pSlotName)
	local vAlternateSlotName = self.cHalfAlternateStatSlot[pSlotName]
	
	local vCurrentScore = vCurrentItem and pStat:GetItemScore(vCurrentItem)
	
	if self.Debug.Optimize then
		self:DebugMessage("AddOutfitStatItemIfBetter for %s: %s (%s) compared to %s (%s)", tostring(pSlotName), tostring(vCurrentItem and vCurrentItem.Name), tostring(vCurrentScore), tostring(pItemInfo.Name), tostring(pScore))
	end
	
	if not vCurrentScore
	or pScore > vCurrentScore then
		-- If we're bumping the current item, see if it should be moved to the alternate slot
		
		if vCurrentScore
		and vAlternateSlotName then
			if self.Debug.Optimize then
				self:DebugMessage("AddOutfitStatItemIfBetter: Trying to push slot %s to slot %s", tostring(pSlotName), tostring(vAlternateSlotName))
			end
			self:AddOutfitStatItemIfBetter(pOutfit, vAlternateSlotName, vCurrentItem, pStat, vCurrentScore)
		end
		
		if self.Debug.Optimize then
			self:DebugMessage("AddOutfitStatItemIfBetter: putting %s (%s) into slot %s replacing %s (%s)", tostring(pItemInfo.Name), tostring(pScore), tostring(pSlotName), tostring(vCurrentItem and vCurrentItem.Name), tostring(vCurrentScore))
		end

		self:AddOutfitStatItem(pOutfit, pSlotName, pItemInfo, pStat, pScore)
	else
		if not vAlternateSlotName then
			return
		end
		
		return self:AddOutfitStatItemIfBetter(pOutfit, vAlternateSlotName, pItemInfo, pStat, pScore)
	end
end

function Outfitter:AddOutfitStatItem(pOutfit, pSlotName, pItemInfo, pStat, pScore)
	if not pSlotName then
		Outfitter:ErrorMessage("AddOutfitStatItem: SlotName is nil for %s", tostring(pItemName))
		return
	end
	
	if not pStat then
		Outfitter:ErrorMessage("AddOutfitStatItem: Stat is nil for %s", tostring(pItemName))
		return
	end
	
	pOutfit:AddItem(pSlotName, pItemInfo)
end

function Outfitter:CollapseMetaSlotsIfBetter(pOutfit, pStat)
	if self.Debug.Optimize then
		self:DebugMessage("CollapseMetaSlotsIfBetter: %s", tostring(pStat.ID))
		self:DebugOutfitTable(pOutfit)
	end
	
	-- Compare the weapon slot with the 1H/OH slots
	
	local vWeapon0Item = pOutfit:GetItem("Weapon0Slot")
	local vWeapon1Item = pOutfit:GetItem("Weapon1Slot")
	
	if vWeapon0Item or vWeapon1Item then
		-- Try the various combinations of MH/OH/W0/W1
		
		local v1HItem = pOutfit:GetItem("MainHandSlot")
		local vOHItem = pOutfit:GetItem("SecondaryHandSlot")
		
		local vCombinations
		
		-- Default set of combinations, now used for all stats including ITEM_LEVEL.
		-- The previous special restriction for ITEM_LEVEL was found to be potentially
		-- missing valid optimal pairings and lacked a clear documented rationale.
		vCombinations =
		{
			{MainHand = v1HItem, SecondaryHand = vOHItem, AllowEmptyMainHand = true},       -- Standard MH + OH (or just OH if MH is empty and allowed)
			{MainHand = v1HItem, SecondaryHand = vWeapon0Item, AllowEmptyMainHand = false},  -- Existing MH + item from Weapon0Slot as OH
			{MainHand = v1HItem, SecondaryHand = vWeapon1Item, AllowEmptyMainHand = false},  -- Existing MH + item from Weapon1Slot as OH
			{MainHand = vWeapon0Item, SecondaryHand = vOHItem, AllowEmptyMainHand = true},    -- Item from Weapon0Slot as MH + existing OH (or just OH if W0 is empty and allowed)
			{MainHand = vWeapon1Item, SecondaryHand = vOHItem, AllowEmptyMainHand = true},    -- Item from Weapon1Slot as MH + existing OH (or just OH if W1 is empty and allowed)
			{MainHand = vWeapon0Item, SecondaryHand = vWeapon1Item, AllowEmptyMainHand = false},-- Item from Weapon0Slot as MH + item from Weapon1Slot as OH (dual-wield from temp weapon slots)
		}
		
		local vBestCombinationIndex = nil
		local vBestCombinationValue = nil
		
		for vIndex, vCombination in ipairs(vCombinations) do
			local vCombination = vCombinations[vIndex]
			
			-- Ignore combinations where the main hand is empty if
			-- that's not allowed with this combination
			
			if vCombination.AllowEmptyMainHand
			or vCombination.MainHand then
				local vCombinationValue = self:AddScores(vCombination.MainHand, vCombination.SecondaryHand, pStat)
				
				if not vBestCombinationIndex
				or vCombinationValue > vBestCombinationValue then
					vBestCombinationIndex = vIndex
					vBestCombinationValue = vCombinationValue
				end
			end
		end
		
		if vBestCombinationIndex then
			local vCombination = vCombinations[vBestCombinationIndex]
			
			pOutfit:SetItem("MainHandSlot", vCombination.MainHand)
			pOutfit:SetItem("SecondaryHandSlot", vCombination.SecondaryHand)
		end
		
		pOutfit:RemoveItem("Weapon0Slot")
		pOutfit:RemoveItem("Weapon1Slot")
	end
	
	-- Compare the 2H slot with the 1H/OH slots
	
	local v2HItem = pOutfit:GetItem("TwoHandSlot")
	
	if v2HItem then
		local v1HItem = pOutfit:GetItem("MainHandSlot")
		local vOHItem = pOutfit:GetItem("SecondaryHandSlot")
		local v1HOHScore = (v1HItem and pStat:GetItemScore(v1HItem) or 0) + (vOHItem and pStat:GetItemScore(vOHItem) or 0)
		
		local v2HScore = pStat:GetItemScore(v2HItem)
		
		if v2HScore
		and v2HScore > v1HOHScore then
			pOutfit:SetItem("MainHandSlot", v2HItem)
			pOutfit:RemoveItem("SecondaryHandSlot")
		end
		
		pOutfit:RemoveItem("TwoHandSlot")
	end
end

function Outfitter:AddScores(pItem1, pItem2, pStat)
	return (pItem1 and pStat:GetItemScore(pItem1) or 0)
	     + (pItem2 and pStat:GetItemScore(pItem2) or 0)
end

----------------------------------------
-- Combinatorial progress dialog
----------------------------------------

function Outfitter:BeginCombiProgress(pName, pNumCombos, pCancelFunc, pHighSpeedFunc)
	if not self.CombiProgressDialog then
		self.CombiProgressDialog = Outfitter:New(self._CombiProgressDialog)
	end
	
	self.NumCombos = pNumCombos
	
	self.CombiProgressDialog:SetTitle(pName)
	self.CombiProgressDialog:SetCancelFunc(pCancelFunc)
	self.CombiProgressDialog:SetHighSpeedFunc(pHighSpeedFunc)
	self.CombiProgressDialog:SetHighSpeed(false)
	
	self.CombiProgressDialog:Show()
end

function Outfitter:FormatThousands(pNumber)
	local vResult = tostring(math.floor(pNumber + 0.5)):reverse():gsub("(%d%d%d)", "%1,"):reverse()
	return vResult:sub(1, 1) == "," and vResult:sub(2) or vResult
end

function Outfitter:UpdateCombiProgress(pComboIndex)
	self.CombiProgressDialog:SetProgress(pComboIndex / self.NumCombos)
	self.CombiProgressDialog:SetProgressText(format("%s of %s", self:FormatThousands(pComboIndex), self:FormatThousands(self.NumCombos)))
end

function Outfitter:EndCombiProgress()
	Outfitter.CombiProgressDialog:Hide()
end

function Outfitter:ItemContainsStats(pItem, pFilterStats)
	for vStatID, _ in pairs(pFilterStats) do
		if pItem.Stats[vStatID] then
			return true
		end
	end
	
	return false
end

----------------------------------------
-- Genetic optimization
----------------------------------------

function Outfitter:FindGeneticCombination(pName, pInventoryCache, pFilterStats, pStat, pStatParams, pCompletionFunc)
	assert(pCompletionFunc)
	
	self.FindGeneticCombinationCoroutineRef = coroutine.create(self.FindGeneticCombinationThread)
	
	local vResult, vMessage = coroutine.resume(self.FindGeneticCombinationCoroutineRef, self, pName, pInventoryCache, pFilterStats, pStat, pStatParams, pCompletionFunc)
	
	if not vResult then
		self:ErrorMessage(vMessage)
	elseif self.FindGeneticCombinationCoroutineRef then
		self.SchedulerLib:ScheduleRepeatingTask(0, self.RunGeneticThread, self)
	end
end

function Outfitter:RunGeneticThread()
	local vResult, vMessage = coroutine.resume(self.FindGeneticCombinationCoroutineRef, self)
	
	if not vResult then
		self:ErrorMessage(vMessage)
	end
	
	if not vResult
	or not self.FindGeneticCombinationCoroutineRef then
		self.FindGeneticCombinationCoroutineRef = nil
		self.SchedulerLib:UnscheduleTask(self.RunGeneticThread, self)
	end
end

function Outfitter:CompareCompoundScores(pScore1, pScore2, pStatParams)
	-- Compares two compound scores (pScore1, pScore2) based on stat parameters (pStatParams).
	-- Returns true if pScore1 is better, false if pScore2 is better or they are equivalent.
	-- Iterates through each component of the scores. If a component in pScore1 is definitively
	-- better than pScore2's component, returns true. If pScore2's is better, returns false.
	-- If components are equal, it proceeds to the next component.
	-- If all components are equal, pScore1 is not strictly better, so returns false.

	for vIndex, vScore1_comp in ipairs(pScore1) do
		local vScore2_comp = pScore2[vIndex]
		local vStatConfig = pStatParams[vIndex] -- Config for the current stat component

		if vScore1_comp == vScore2_comp then
			-- Scores for this component are equal, do nothing and proceed to the next component.
			-- If this is the last component, the overall result will be 'false' (pScore1 is not strictly better).
		else
			-- Scores for this component are different, determine which is better.
			if vStatConfig and vStatConfig.MinValue then
				-- This stat component has a MinValue constraint.
				local s1_meets_min = (vScore1_comp >= vStatConfig.MinValue)
				local s2_meets_min = (vScore2_comp >= vStatConfig.MinValue)

				if s1_meets_min and s2_meets_min then
					-- Both scores meet MinValue: the higher score is better.
					if vScore1_comp > vScore2_comp then return true end
					if vScore2_comp > vScore1_comp then return false end
					-- If equal, this path shouldn't be taken due to outer 'if vScore1_comp == vScore2_comp'
				elseif s1_meets_min then
					-- Only score1 meets MinValue: score1 is better.
					return true
				elseif s2_meets_min then
					-- Only score2 meets MinValue: score2 is better.
					return false
				else
					-- Neither score meets MinValue: the one closer to MinValue (i.e., higher score) is considered "less bad".
					if vScore1_comp > vScore2_comp then return true end
					if vScore2_comp > vScore1_comp then return false end
				end

			elseif vStatConfig and vStatConfig.MaxValue then
				-- This stat component has a MaxValue constraint.
				local s1_meets_max = (vScore1_comp <= vStatConfig.MaxValue)
				local s2_meets_max = (vScore2_comp <= vStatConfig.MaxValue)

				if s1_meets_max and s2_meets_max then
					-- Both scores are within MaxValue: the higher score is better.
					if vScore1_comp > vScore2_comp then return true end
					if vScore2_comp > vScore1_comp then return false end
				elseif s1_meets_max then
					-- Only score1 is within MaxValue: score1 is better.
					return true
				elseif s2_meets_max then
					-- Only score2 is within MaxValue: score2 is better.
					return false
				else
					-- Both scores exceed MaxValue: the one closer to MaxValue (i.e., lower score) is considered "less bad".
					if vScore1_comp < vScore2_comp then return true end
					if vScore2_comp < vScore1_comp then return false end
				end
			else 
				-- No MinValue or MaxValue constraint for this stat component: higher score is better.
				if vScore1_comp > vScore2_comp then return true end
				-- No need for 'vScore2_comp > vScore1_comp then return false' here,
				-- because if vScore1_comp is not greater and not equal, it must be less.
				-- The loop will correctly interpret this by eventually returning false if no other component decides.
				if vScore1_comp < vScore2_comp then return false end
			end
		end
	end

	-- If the loop completes, it means all components were equal or pScore2 was better/equal at some point
	-- where a definitive decision for pScore1 wasn't made.
	-- Therefore, pScore1 is not strictly better than pScore2.
	return false 
end

-- Helper function to calculate fitness score for an outfit
function Outfitter:_CalculateFitness(pOutfit, pStat, pStatParams)
	return self:GetOutfitScoreWithEmptySlots(pOutfit, pStat, pStatParams)
end

-- Helper function to initialize the population
function Outfitter:_InitializePopulation(pPopulationSize, pOutfitIterator, pStat, pStatParams)
	local vCitizens = {}
	local vNumOutfitsGenerated = 0
	
	for _ = 1, pPopulationSize do
		local vOutfit = pOutfitIterator:GenerateRandomOutfit()
		vOutfit.GeneticScore = self:_CalculateFitness(vOutfit, pStat, pStatParams)
		table.insert(vCitizens, vOutfit)
		vNumOutfitsGenerated = vNumOutfitsGenerated + 1
	end
	
	return vCitizens, vNumOutfitsGenerated
end

-- Helper function to select two distinct parents
function Outfitter:_SelectParents(pNumParents)
	local vParentIndex1 = math.random(pNumParents)
	local vParentIndex2 = math.random(pNumParents)
	
	if pNumParents > 1 then -- Ensure parents are distinct if possible
		while vParentIndex2 == vParentIndex1 do
			vParentIndex2 = math.random(pNumParents)
		end
	end
	
	return vParentIndex1, vParentIndex2
end

-- Helper function for crossover (mating)
function Outfitter:_Crossover(pOutfitIterator, pParent1Outfit, pParent2Outfit)
	return pOutfitIterator:SpliceOutfits(pParent1Outfit, pParent2Outfit)
end

-- Helper function for mutation
function Outfitter:_Mutate(pOutfitIterator, pOutfit, pMutationRate)
	pOutfitIterator:MutateOutfit(pOutfit, pMutationRate)
end

-- Helper function to check termination conditions and update progress description
function Outfitter:_UpdateAndCheckTermination(pBestScore, pPreviousBestScoreString, pNoChangeCount, pMaxNoChangeCount, pCancelFlag, pCombiDialog, pStatName)
	local vCurrentBestScoreString = ""
	if pBestScore then
		vCurrentBestScoreString = type(pBestScore) == "table" and table.concat(pBestScore, ", ") or tostring(pBestScore)
	end

	local vTerminate = false
	local vNewNoChangeCount = pNoChangeCount
	
	if pPreviousBestScoreString ~= "" and pPreviousBestScoreString == vCurrentBestScoreString then
		vNewNoChangeCount = vNewNoChangeCount + 1
		if vNewNoChangeCount >= pMaxNoChangeCount then 
			vTerminate = true
		end
	elseif pPreviousBestScoreString ~= vCurrentBestScoreString then 
		vNewNoChangeCount = 0
	end
	
	if pCancelFlag then
		vTerminate = true
	end

	if pCombiDialog then
		pCombiDialog:SetDescription(string.format("Best score for %s: %s", pStatName or "current stat", vCurrentBestScoreString))
	end
	
	return vTerminate, vNewNoChangeCount, vCurrentBestScoreString
end

function Outfitter:SortCitizens(pCitizens, pStatParams)
	if not pCitizens or #pCitizens == 0 then return end
	if not pCitizens[1] or not pCitizens[1].GeneticScore then return end

	if type(pCitizens[1].GeneticScore) == "table" then
		table.sort(pCitizens, function (pOutfit1, pOutfit2)
			if not pOutfit1 or not pOutfit1.GeneticScore then return false end 
			if not pOutfit2 or not pOutfit2.GeneticScore then return true end 
			return self:CompareCompoundScores(pOutfit1.GeneticScore, pOutfit2.GeneticScore, pStatParams)
		end)
	else
		table.sort(pCitizens, function (pOutfit1, pOutfit2)
			if not pOutfit1 or not pOutfit1.GeneticScore then return false end
			if not pOutfit2 or not pOutfit2.GeneticScore then return true end
			return pOutfit1.GeneticScore > pOutfit2.GeneticScore
		end)
	end
end

function Outfitter:FindGeneticCombinationThread(pName, pInventoryCache, pFilterStats, pStat, pStatParams, pCompletionFunc)
	assert(pCompletionFunc)
	
	local vMaxGenerations = 1000
	local vPopulationSize = 300 
	local vNumParents = 25
	local vNumOutfitsGenerated = 0
	local vMutationRate = 0.2
	local vMaxNoChangeCount = 100 
	
	pInventoryCache:ResetIgnoreItemFlags()
	
	local vOutfitIterator = Outfitter:New(self._OutfitIterator, pName, pInventoryCache, pFilterStats)
	
	local vMaxYieldTime = 0.02
	local vCancel
	
	self:BeginCombiProgress(
		string.format("Genetically optimizing %s for %s", pName, pStat.Name),
		vMaxNoChangeCount, 
		function () vCancel = true end,
		function (pSet)
			if pSet then vMaxYieldTime = 0.1 else vMaxYieldTime = 0.02 end
		end)
	
	local vStartTime = GetTime()
	local vLoopCountYieldFactor = 5000 
	
	if pStat.Begin then pStat:Begin(pInventoryCache) end
	
	-- 1. Initialization of population
	local vCitizens, vInitialOutfitsGenerated = self:_InitializePopulation(vPopulationSize, vOutfitIterator, pStat, pStatParams)
	vNumOutfitsGenerated = vNumOutfitsGenerated + vInitialOutfitsGenerated
	
	self:SortCitizens(vCitizens, pStatParams)
	
	local vYieldTime = GetTime() + vMaxYieldTime
	local vLoopCount = vLoopCountYieldFactor * vMaxYieldTime 
	
	local vPreviousBestScoreString = ""
	if vCitizens and #vCitizens > 0 and vCitizens[1] and vCitizens[1].GeneticScore then
		vPreviousBestScoreString = type(vCitizens[1].GeneticScore) == "table" and table.concat(vCitizens[1].GeneticScore, ", ") or tostring(vCitizens[1].GeneticScore)
	end
	if self.CombiProgressDialog then
		self.CombiProgressDialog:SetDescription(string.format("Best score for %s: %s", pStat.Name, vPreviousBestScoreString))
	end

	local vNoChangeCount = 0
	local vPreviousNoChangeCountForProgressDisplay
	
	for vGenerationIndex = 1, vMaxGenerations do
		for vChildIndex = vNumParents + 1, vPopulationSize do
			-- 2. Parent selection
			local vParentIndex1, vParentIndex2 = self:_SelectParents(vNumParents)
			local vParent1Citizen = vCitizens[vParentIndex1] 
			local vParent2Citizen = vCitizens[vParentIndex2]

            if not vParent1Citizen or not vParent2Citizen then
                goto NextChildInGenerationLoop 
            end
			
			-- 3. Crossover (mating)
			local vChildOutfit = self:_Crossover(vOutfitIterator, vParent1Citizen, vParent2Citizen)
			
			-- 4. Mutation
			self:_Mutate(vOutfitIterator, vChildOutfit, vMutationRate)
			
			-- 5. Fitness calculation for the new child
			vChildOutfit.GeneticScore = self:_CalculateFitness(vChildOutfit, pStat, pStatParams)
			
			vCitizens[vChildIndex] = vChildOutfit 
			vNumOutfitsGenerated = vNumOutfitsGenerated + 1
			
			::NextChildInGenerationLoop:: 

			vLoopCount = vLoopCount - 1
			if GetTime() >= vYieldTime or vLoopCount <= 0 then
				coroutine.yield()
				vYieldTime = GetTime() + vMaxYieldTime
				vLoopCount = vLoopCountYieldFactor * vMaxYieldTime 
			end
			
			if vCancel then break end 
		end
		
		if vCancel then break end 
		
		self:SortCitizens(vCitizens, pStatParams)
		
		local vCurrentBestCitizenScore = (vCitizens and #vCitizens > 0 and vCitizens[1]) and vCitizens[1].GeneticScore or nil
		
		-- 6. Termination condition checking
		local vTerminate, vNewNoChangeCount, vCurrentBestScoreString = self:_UpdateAndCheckTermination(
			vCurrentBestCitizenScore, vPreviousBestScoreString, vNoChangeCount, vMaxNoChangeCount, vCancel, self.CombiProgressDialog, pStat.Name
		)
		vNoChangeCount = vNewNoChangeCount
		vPreviousBestScoreString = vCurrentBestScoreString

		if not vPreviousNoChangeCountForProgressDisplay or vNoChangeCount > vPreviousNoChangeCountForProgressDisplay or vNoChangeCount == 0 then
			self:UpdateCombiProgress(vNoChangeCount)
			vPreviousNoChangeCountForProgressDisplay = vNoChangeCount
		end
		
		if vTerminate then break end 
	end
	
	if pStat.End then pStat:End(pInventoryCache) end
	
	local vEndTime = GetTime()
	self:EndCombiProgress()
	self.FindGeneticCombinationCoroutineRef = nil 
	
	if not vCancel then
		local vBestFinalCitizen = (vCitizens and #vCitizens > 0 and vCitizens[1]) or nil
		local vFinalBestScoreString = vPreviousBestScoreString 

		local vElapsedTime = vEndTime - vStartTime
		if vElapsedTime <= 0 then vElapsedTime = 1 end 

		Outfitter:NoteMessage(
			"Checked %s outfits in %s seconds (%s outfits per second)",
			Outfitter:FormatThousands(vNumOutfitsGenerated),
			math.floor(vElapsedTime),
			Outfitter:FormatThousands(math.floor(vNumOutfitsGenerated / vElapsedTime)))
		
		Outfitter:NoteMessage("Best outfit score for %s: %s", pStat.Name, vFinalBestScoreString)
		
		if vBestFinalCitizen then
			pCompletionFunc(vBestFinalCitizen)
		else
			pCompletionFunc(nil) 
		end
	else
		pCompletionFunc(nil) 
	end
end

function Outfitter:GetOutfitScoreWithEmptySlots(pOutfit, pStat, pStatParams)
	local vGeneticScore = pStat:GetOutfitScore(pOutfit, pStatParams)
	
	if type(vGeneticScore) ~= "table" then
		vGeneticScore = {vGeneticScore}
	end
	
	table.insert(vGeneticScore, pOutfit:GetNumEmptySlots())
	
	return vGeneticScore
end

----------------------------------------
Outfitter._CombiProgressDialog = {}
----------------------------------------

function Outfitter._CombiProgressDialog:New()
	return Outfitter:New(Outfitter.UIElementsLib._FloatingWindow)
end

function Outfitter._CombiProgressDialog:Construct()
	self:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	self:SetWidth(300)
	self:SetHeight(60)
	
	local vMargin = 8
	
	self.CancelButton = Outfitter:New(Outfitter.UIElementsLib._PushButton, self.ContentFrame, CANCEL, 80)
	self.CancelButton:SetPoint("TOPRIGHT", self.ContentFrame, "TOPRIGHT", -vMargin, -vMargin)
	self.CancelButton:SetScript("OnClick", function ()
		self.CancelFunc()
	end)
	
	self.ProgressBar = Outfitter:New(Outfitter.UIElementsLib._ProgressBar, self.ContentFrame)
	self.ProgressBar:SetPoint("TOPLEFT", self.ContentFrame, "TOPLEFT", vMargin, -vMargin)
	self.ProgressBar:SetPoint("RIGHT", self.CancelButton, "LEFT", -4, 0)
	
	self.HighSpeed = Outfitter:New(Outfitter.UIElementsLib._CheckButton, self.ContentFrame, "High speed")
	self.HighSpeed:SetPoint("TOPLEFT", self.ProgressBar, "BOTTOMLEFT", 0, -4)
	self.HighSpeed:SetScript("OnClick", function (pButton)
		self.HighSpeedFunc(pButton:GetChecked())
	end)
	
	self.Description = self.ContentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	self.Description:SetJustifyH("RIGHT")
	self.Description:SetJustifyV("TOP")
	self.Description:SetPoint("LEFT", self.HighSpeed.Title, "RIGHT", 4, 0)
	self.Description:SetPoint("RIGHT", self.ContentFrame, "RIGHT", -vMargin, 0)
	
	self.TitleBar:SetCloseFunc(function () self.CancelFunc() end)
end

function Outfitter._CombiProgressDialog:SetDescription(pDescription)
	self.Description:SetText(pDescription)
end

function Outfitter._CombiProgressDialog:SetCancelFunc(pCancelFunc)
	self.CancelFunc = pCancelFunc
end

function Outfitter._CombiProgressDialog:SetHighSpeed(pHighSpeed)
	self.HighSpeed:SetChecked(pHighSpeed)
end

function Outfitter._CombiProgressDialog:SetHighSpeedFunc(pHighSpeedFunc)
	self.HighSpeedFunc = pHighSpeedFunc
end

function Outfitter._CombiProgressDialog:SetProgress(pProgress)
	self.ProgressBar:SetProgress(pProgress)
end

function Outfitter._CombiProgressDialog:SetProgressText(pText)
	self.ProgressBar:SetText(pText)
end

----------------------------------------
Outfitter._OutfitIterator = {}
----------------------------------------

function Outfitter._OutfitIterator:Construct(pName, pInventoryCache, pFilterStats)
	self.Name = pName
	
	self.Slots = {}
	self.NumCombinations = 1
	
	if Outfitter.Debug.Optimize then
		Outfitter:DebugMessage("pFilterStats in _OutfitIterator:Construct: %s", tostring(pFilterStats))
	end
	
	for vInventorySlot, vItems in pairs(pInventoryCache.ItemsBySlot) do
		local vNumSlotItems = 0
		local vNumItems = #vItems
		
		if vNumItems > 0 then
			-- Filter the items by stat
			
			local vFilteredItems = nil
			
			if pFilterStats then
				vNumItems = 0
				
				for vItemIndex, vItem in ipairs(vItems) do
					if vItem:GetMeetsRequirements() then
						for _, vStat in ipairs(pFilterStats) do
							if vStat:GetItemScore(vItem) then
								if not vFilteredItems then
									vFilteredItems = {}
								end
							
								table.insert(vFilteredItems, vItem)
								vNumItems = vNumItems + 1
								vNumSlotItems = vNumSlotItems + 1
							
								break
							end -- if GetItemScore
						end -- for pFileStats
					end -- GetMeetsRequirements
				end
			else
				vFilteredItems = vItems
			end
			
			-- Add the filtered list
			
			if vFilteredItems then
				table.insert(self.Slots, {ItemSlotName = vInventorySlot, Items = vFilteredItems, Index = 1, MaxIndex = vNumItems})
				
				self.NumCombinations = self.NumCombinations * vNumItems
				
				-- Duplicate the list for slots with alternates (finger, weapon, trinket)
				
				local vAltInventorySlot = Outfitter.cHalfAlternateStatSlot[vInventorySlot]
				
				if vAltInventorySlot then
					table.insert(self.Slots, {ItemSlotName = vAltInventorySlot, Items = vFilteredItems, Index = 1, MaxIndex = vNumItems})
					
					self.NumCombinations = self.NumCombinations * vNumItems
				end
			end
			
			if Outfitter.Debug.Optimize then
				Outfitter:DebugMessage("%s has %s items", vInventorySlot, vNumSlotItems)
			end
		end
	end
end

function Outfitter._OutfitIterator:Outfits()
	-- Reset the slots
	
	for vSlotIndex, vSlotIterator in ipairs(self.Slots) do
		vSlotIterator.Index = 1
	end
	
	return self.Next, self, 0, nil
end

function Outfitter._OutfitIterator:Next(pPreviousIndex)
	if not self.Slots[1] then
		return nil
	end
	
	if pPreviousIndex == 0 then
		return 1, self:GetOutfit()
	end
	
	for vSlotIndex, vSlotIterator in ipairs(self.Slots) do
		vSlotIterator.Index = vSlotIterator.Index + 1
		
		if vSlotIterator.Index <= vSlotIterator.MaxIndex then
			return pPreviousIndex + 1, self:GetOutfit()
		end
		
		vSlotIterator.Index = 1
	end
	
	return nil -- Couldn't increment
end

function Outfitter._OutfitIterator:GetOutfit()
	local vOutfit = Outfitter:NewEmptyOutfit(self.Name)

	for _, vItems in ipairs(self.Slots) do
		if vItems.Index > 0 then
			local vItem = vItems.Items[vItems.Index]
			local vAltSlotName = Outfitter.cFullAlternateStatSlot[vItems.ItemSlotName]
			
			-- Only include the item if it isn't already being tried in an alternate slot (ie, trinket0 vs. trinket1)
			
			if not vAltSlotName
			or vOutfit.Items[vAltSlotName] ~= vItem then
				vOutfit.Items[vItems.ItemSlotName] = vItem
			end
		end
	end
	
	if vOutfit.Items.MainHandSlot
	and vOutfit.Items.MainHandSlot.InvType == "INVTYPE_2HWEAPON"
	and not Outfitter.CanDualWield2H then
		vOutfit.Items.SecondaryHandSlot = nil
	end
	
	return vOutfit
end

-- Genetic methods

function Outfitter._OutfitIterator:SetRandomItemForSlot(pOutfit, pItems)
	local vNumItems = #pItems.Items
	
	-- Set the slot to empty if there are no items for it
	if vNumItems < 1 then
		pOutfit.Items[pItems.ItemSlotName] = nil
		return
	end
	
	-- Pick a random item (zero means that an empty slot was chosen)
	local vIndex = math.random(vNumItems + 1) - 1
	local vItem = vIndex > 0 and pItems.Items[vIndex] or nil
	
	-- All done if there's no alternate slot or that
	-- slot has a different item
	local vAltSlotName = Outfitter.cFullAlternateStatSlot[pItems.ItemSlotName]
	if not vItem
	or not vAltSlotName
	or pOutfit.Items[vAltSlotName] ~= vItem then
		pOutfit.Items[pItems.ItemSlotName] = vItem
		return
	end
	
	-- Choose an empty slot if there's only one item to choose from
	if vNumItems < 2 then
		pOutfit.Items[pItems.ItemSlotName] = nil
		return
	end
	
	-- If there are only two items to choose from then choose the other one
	if vNumItems == 2 then
		pOutfit.Items[pItems.ItemSlotName] = pItems.Items[3 - vIndex]
		return
	end
	
	-- Try to find an item until there's no conflict
	while vItem and pOutfit.Items[vAltSlotName] == vItem do
		local vItemIndex = math.random(vNumItems + 1) - 1
		vItem = vItemIndex > 0 and pItems.Items[vItemIndex] or nil
	end
	
	pOutfit.Items[pItems.ItemSlotName] = vItem
end

function Outfitter._OutfitIterator:GenerateRandomOutfit()
	local vOutfit = Outfitter:NewEmptyOutfit(self.Name)

	for _, vItems in ipairs(self.Slots) do
		self:SetRandomItemForSlot(vOutfit, vItems)
	end
	
	-- Remove the OH choice if there's a 2H in the MH and
	-- they can't dual-wield
	
	if vOutfit.Items.MainHandSlot
	and vOutfit.Items.MainHandSlot.InvType == "INVTYPE_2HWEAPON"
	and not Outfitter.CanDualWield2H then
		vOutfit.Items.SecondaryHandSlot = nil
	end
	
	return vOutfit
end

function Outfitter._OutfitIterator:SpliceOutfits(pOutfit1, pOutfit2)
	local vOutfit = Outfitter:NewEmptyOutfit(self.Name)
	
	for _, vItems in ipairs(self.Slots) do
		local vItem = (math.random() < 0.5) and pOutfit1.Items[vItems.ItemSlotName] or pOutfit2.Items[vItems.ItemSlotName]
		local vAltSlotName = Outfitter.cFullAlternateStatSlot[vItems.ItemSlotName]
		
		if not vAltSlotName
		or vOutfit.Items[vAltSlotName] ~= vItem then
			vOutfit.Items[vItems.ItemSlotName] = vItem
		end
	end
	
	if vOutfit.Items.MainHandSlot
	and vOutfit.Items.MainHandSlot.InvType == "INVTYPE_2HWEAPON"
	and not Outfitter.CanDualWield2H then
		vOutfit.Items.SecondaryHandSlot = nil
	end
	
	return vOutfit
end

function Outfitter._OutfitIterator:MutateOutfit(pOutfit, pMutationRate)
	for _, vItems in ipairs(self.Slots) do
		if math.random() < pMutationRate then
			self:SetRandomItemForSlot(pOutfit, vItems)
		end
	end
	
	if pOutfit.Items.MainHandSlot
	and pOutfit.Items.MainHandSlot.InvType == "INVTYPE_2HWEAPON"
	and not Outfitter.CanDualWield2H then
		pOutfit.Items.SecondaryHandSlot = nil
	end
end

function Outfitter._OutfitIterator:SortItemsByStat(pStatID) -- pStatID is the string key for the stat, e.g., "CRIT"
	if not pStatID then return end -- Do nothing if no stat ID is provided

	for _, vSlotInfo in ipairs(self.Slots) do
		if vSlotInfo.Items and #vSlotInfo.Items > 0 then
			table.sort(vSlotInfo.Items,
				function (pItem1, pItem2)
					-- Ensure pItem1 and pItem2 and their .Stats tables are valid before indexing
					local vStat1 = (pItem1 and pItem1.Stats) and pItem1.Stats[pStatID] or nil
					local vStat2 = (pItem2 and pItem2.Stats) and pItem2.Stats[pStatID] or nil
					
					if vStat1 == nil and vStat2 == nil then
						return false -- Both nil, treat as equal in terms of this stat; maintain original order relative to each other
					elseif vStat1 == nil then
						return false -- Only vStat1 is nil, so pItem2 (which has the stat) comes first
					elseif vStat2 == nil then
						return true  -- Only vStat2 is nil, so pItem1 (which has the stat) comes first
					else
						-- Both items have the stat, sort by value (ascending)
						return vStat1 < vStat2
					end
				end
			)
		end
	end
end

function Outfitter._OutfitIterator:CalcMinNumSlotsByStat(pStat, pMinValue)
	local vStatValues = {}

	for _, vSlotInfo in ipairs(self.Slots) do
		local vNumItems = #vSlotInfo.Items
		
		if vNumItems > 0 then
			local vValue = vSlotInfo.Items[1].Stats[pStat]
			
			if vValue then
				table.insert(vStatValues, vValue)
			end

			if vNumItems > 1
			and (vSlotInfo.ItemSlotName == "Trinket0Slot"
			or vSlotInfo.ItemSlotName == "Finger0Slot"
			or vSlotInfo.ItemSlotName == "WeaponSlot") then
				local vValue = vSlotInfo.Items[2].Stats[pStat]
				
				if vValue then
					table.insert(vStatValues, vValue)
				end
			end
		end
	end
	
	table.sort(vStatValues, function (pValue1, pValue2) return pValue1 > pValue2 end)
	
	local vTotal = 0
	
	for vIndex, vValue in ipairs(vStatValues) do
		vTotal = vTotal + vValue
		
		if vTotal >= pMinValue then
			return vIndex
		end
	end
	
	return #vStatValues
end

----------------------------------------
Outfitter._MultiStatConfig = {}
----------------------------------------

function Outfitter._MultiStatConfig:New(pParent)
	return CreateFrame("Frame", nil, pParent)
end

function Outfitter._MultiStatConfig:Construct(pParent)
	self.ConfigLines = {}
	
	self.AddStatButton = Outfitter:New(Outfitter.UIElementsLib._PushButton, self, "Add another stat", 200)
	
	self.AddStatButton:SetScript("OnClick", function ()
		self:SetNumConfigLines(self.NumConfigLines + 1)
	end)
	
	self:AdjustSize()
end

function Outfitter._MultiStatConfig:SetConfig(pConfig)
	local vNumConfigLines
	
	if not pConfig then
		pConfig = {{StatID = "STA"}}
	end
	
	local vNumConfigLines = #pConfig
	
	self:SetNumConfigLines(vNumConfigLines)
	
	for vIndex, vConfig in ipairs(pConfig) do
		self.ConfigLines[vIndex]:SetConfig(vConfig)
	end
end

function Outfitter._MultiStatConfig:SetNumConfigLines(pNumLines)
	self.NumConfigLines = pNumLines
	
	local vOldNumConfigLines = #self.ConfigLines
	local vNumConfigLines = vOldNumConfigLines
	
	while vNumConfigLines < pNumLines do
		local vLineIndex = vNumConfigLines + 1
		
		vConfigLine = Outfitter:New(Outfitter._MultiStatConfigLine, self, vLineIndex, vLineIndex > 1)
		
		vConfigLine.OnDelete = function ()
			self:DeleteConfigLine(vLineIndex)
		end
		
		vConfigLine.OnChange = function ()
			if self.OnChange then
				self.OnChange()
			end
		end

		if #self.ConfigLines == 0 then
			vConfigLine:SetPoint("TOPLEFT", self, "TOPLEFT")
		else
			vConfigLine:SetPoint("TOPLEFT", self.ConfigLines[#self.ConfigLines], "BOTTOMLEFT", 0, -4)
		end
		
		table.insert(self.ConfigLines, vConfigLine)
		
		vNumConfigLines = vNumConfigLines + 1
	end
	
	for vIndex, vConfigLine in ipairs(self.ConfigLines) do
		if vIndex <= pNumLines then
			if vIndex > vOldNumConfigLines then
				vConfigLine:SetConfig({StatID = "STA"})
			end
			
			vConfigLine:Show()
		else
			vConfigLine:Hide()
		end
	end
	
	self.AddStatButton:ClearAllPoints()
	self.AddStatButton:SetPoint("TOPLEFT", self.ConfigLines[pNumLines], "BOTTOMLEFT", 0, -4)
	
	self:AdjustSize()
	
	if self.OnNumLinesChanged then
		self:OnNumLinesChanged(pNumLines)
	end
end

function Outfitter._MultiStatConfig:GetConfig()
	local vConfig = {}
	
	for vIndex, vConfigLine in ipairs(self.ConfigLines) do
		if not vConfigLine:IsShown() then
			break
		end
		
		table.insert(vConfig, vConfigLine:GetConfig())
	end
	
	local vStat = Outfitter:GetStatByID(vConfig[1].StatID)

	if not vStat then
		Outfitter:ErrorMessage("Unknown stat ID: %s", tostring(vConfig[1].StatID)) -- Corrected indexing
	else
		vConfig.Complex = #vConfig > 1
					   or vStat.Complex
					   or vConfig[1].MinValue
					   or vConfig[1].MaxValue
	end

	return vConfig
end

function Outfitter._MultiStatConfig:DeleteConfigLine(pLineIndex)
	local vConfig = self:GetConfig()
	
	table.remove(vConfig, pLineIndex)
	
	self:SetConfig(vConfig)
end

function Outfitter._MultiStatConfig:AdjustSize()
	local vWidth = 0
	local vHeight = 0
	
	for vIndex, vConfigLine in ipairs(self.ConfigLines) do
		if not vConfigLine:IsShown() then -- Check vConfigLine itself, not vConfigLine:IsShown() which might be nil
			break
		end
		
		vHeight = vHeight + vConfigLine:GetHeight() + 4
		
		if vConfigLine:GetWidth() > vWidth then
			vWidth = vConfigLine:GetWidth()
		end
	end
	
	vHeight = vHeight + self.AddStatButton:GetHeight()
	
	self:SetWidth(vWidth)
	self:SetHeight(vHeight)
end

----------------------------------------
Outfitter._MultiStatConfigLine = {}
----------------------------------------

function Outfitter._MultiStatConfigLine:New(pParent)
	return CreateFrame("Frame", nil, pParent)
end

function Outfitter._MultiStatConfigLine:Construct(pParent, pIndex, pCanDelete)
	self.StatMenu = Outfitter:New(Outfitter.UIElementsLib._TitledDropDownMenuButton, self, function (...) self:StatMenuFunc(...) end)
	self.StatMenu:SetTitle(string.format("Stat %d", pIndex))
	self.StatMenu.ItemClickedFunc = function (pMenu, pValue)
		local stat = Outfitter.StatCategories[pMenu:GetParent().Value]:GetIndexedStat(pValue) -- Example of how to get stat from menu value
		self:SetStatID(stat.ID)
		if self.OnChange then
			self:OnChange()
		end
	end
	
	self.OpMenu = Outfitter:New(Outfitter.UIElementsLib._TitledDropDownMenuButton, self, function (...) self:OpMenuFunc(...) end)
	self.OpMenu.ItemClickedFunc = function (pMenu, pValue)
		self:SetOp(pValue) -- pValue here should be "MAX", "LT", "GT"
		if self.OnChange then
			self:OnChange()
		end
	end
	
	self.MinValue = Outfitter:New(Outfitter.UIElementsLib._EditBox, self, nil, 7)
	self.MinValue:SetEmptyText("value")
	self.MinValue:SetScript("OnTextChanged", function ()
		if self.OnChange then
			self:OnChange()
		end
	end)

	if pCanDelete then
		self.DeleteButton = Outfitter:New(Outfitter.UIElementsLib._PushButton, self, REMOVE, 90)
		self.DeleteButton:SetScript("OnClick", function ()
			if self.OnDelete then
				self:OnDelete()
			end
		end)
	end
	
	self.StatMenu:SetWidth(120)
	self.OpMenu:SetWidth(60)
	self.MinValue:SetWidth(80)
	
	self.StatMenu:SetPoint("LEFT", self, "LEFT", 50, 0)
	self.OpMenu:SetPoint("LEFT", self.StatMenu, "RIGHT", 15, 0)
	self.MinValue:SetPoint("LEFT", self.OpMenu, "RIGHT", 15, 0)
	
	if self.DeleteButton then
		self.DeleteButton:SetPoint("LEFT", self.MinValue, "RIGHT", 10, 1)
	end
	
	self:SetWidth(445)
	self:SetHeight(30)
end

function Outfitter._MultiStatConfigLine:StatMenuFunc(menu)
    for catIndex, category in ipairs(Outfitter.StatCategories) do
        local categoryItems = {}
        for statIndex = 1, category:GetNumStats() do
            local stat = category:GetIndexedStat(statIndex)
            table.insert(categoryItems, {text = stat.Name, value = stat.ID}) -- Store ID as value
        end

        menu:AddSelectGroup(category.Name, categoryItems,
            function(button, selectedValue) -- onSelect
                self:SetStatID(selectedValue)
				if self.OnChange then self.OnChange() end
            end,
            function() -- getCurrentValue
                return self.StatID
            end
        )
    end
end


function Outfitter._MultiStatConfigLine:OpMenuFunc(menu)
    local opItems = {
        {text = "Max", value = "MAX"},
        {text = "<=", value = "LT"},
        {text = ">=", value = "GT"}
    }
    menu:AddToggleGroup(opItems,
        function(button, selectedValue) -- onSelect
            self:SetOp(selectedValue)
			if self.OnChange then self.OnChange() end
        end,
        function() -- getCurrentValue
            return self.Op
        end
    )
end

function Outfitter._MultiStatConfigLine:SetStatID(statID)
	local stat = Outfitter:GetStatByID(statID)
	self.StatID = statID
	self.StatMenu:SetCurrentValueText(stat and stat.Name or tostring(statID))
end

function Outfitter._MultiStatConfigLine:SetOp(pOp)
	self.Op = pOp
	if pOp == "MAX" then
		self.OpMenu:SetCurrentValueText("Max")
	elseif pOp == "GT" then
		self.OpMenu:SetCurrentValueText(">=")
	elseif pOp == "LT" then
		self.OpMenu:SetCurrentValueText("<=")
	end
	
	if pOp == "MAX" then
		self.MinValue:Hide()
	else
		self.MinValue:Show()
	end
end

function Outfitter._MultiStatConfigLine:SetConfig(pConfig)
	if not pConfig then
		self:SetStatID("STA") -- Default Stat
		self:SetOp("MAX")     -- Default Op
		self.MinValue:SetText("")
	else
		self:SetStatID(pConfig.StatID or "STA")
		
		local op = "MAX"
		if pConfig.MinValue then op = "GT"
		elseif pConfig.MaxValue then op = "LT"
		end
		self:SetOp(op)
		
		self.MinValue:SetText(pConfig.MinValue or pConfig.MaxValue or "")
	end
end

function Outfitter._MultiStatConfigLine:GetConfig()
	local vValueText = self.MinValue:GetText()
	local vValue = tonumber(vValueText)
	
	local vStatID = self.StatID
	local vOp = self.Op
	
	local vMinValue = nil
	local vMaxValue = nil

	if vOp == "GT" then
		vMinValue = vValue
	elseif vOp == "LT" then
		vMaxValue = vValue
	end
	
	local vConfig =
	{
		StatID = vStatID,
		MinValue = vMinValue,
		MaxValue = vMaxValue,
	}
	
	return vConfig
end

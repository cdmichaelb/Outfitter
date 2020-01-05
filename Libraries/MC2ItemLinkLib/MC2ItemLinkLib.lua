----------------------------------------
-- ItemLinkLib
--
-- Provides functions for manipulating item links
--
-- Requires: MC2AddonLib
----------------------------------------

local _, Addon = ...

----------------------------------------
Addon.ItemLinkLib = {
----------------------------------------
	version = 1,
}

function Addon.ItemLinkLib:linkInfoForLink(link)
	return Addon:new(self._LinkInfo, link)
end

----------------------------------------
Addon.ItemLinkLib._LinkInfo = {}
----------------------------------------

function Addon.ItemLinkLib._LinkInfo:construct(link)
	self:parse(link)
end

function Addon.ItemLinkLib._LinkInfo:parse(link)
	-- Do nothing if no link
	if not link then
		return
	end

	-- Only process item links
	local _, _, type = link:find("|H([^:]+):")
	if type ~= "item" then
		return
	end

	local startIndex, endIndex, codeStrings, name = link:find("|Hitem:([^|]*)|h%[([^%]]*)%]|h")

	-- Bail if no codes
	if not codeStrings then
		return
	end

	-- Extract the codes into an array
	for codeString in string.gmatch(codeStrings..":", "%-?%d*:") do
		local code = tonumber(strmatch(codeString, "(%-?%d+):")) or 0
		self[#self + 1] = code
	end

	-- Extract the array into meaningful fields
	self.link = link
	self.itemID = self[1] or 0
	self.enchantID = self[2] or 0
	self.gem1 = self[3] or 0
	self.gem2 = self[4] or 0
	self.gem3 = self[5] or 0
	self.gem4 = self[6] or 0
	self.suffixID = self[7] or 0
	self.uniqueID = self[8] or 0
	self.linkLevel = self[9]		-- LinkLevel is the level of the player who generated the link, which isn't interesting to us
	self.specializationID = self[10]	-- DON'T capture this
	self.upgradeTypeID = self[11] or 0
	self.instanceDifficultyID = self[12] or 0

	-- Extract bonus IDs
	self.numBonusIDs = tonumber(self[13])
	local index = 14
	if self.numBonusIDs > 0 then
		self.bonusIDs = {tonumber(self[index])}
		index = index + 1

		if self.numBonusIDs > 1 then
			self.bonusIDs = {tonumber(self[index])}
			index = index + 1
		end
	end

	self.upgradeID = self[index] or 0
end

-- /dump Outfitter.ItemLinkLib:linkInfoForLink(GetContainerItemLink(0, 1))

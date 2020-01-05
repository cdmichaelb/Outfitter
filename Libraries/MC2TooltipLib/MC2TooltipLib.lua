----------------------------------------
-- TooltipLib
-- Provides functions for parsing tooltip contents plus a utility Tooltip object
----------------------------------------

local AddonName, Addon = ...

----------------------------------------
Addon.TooltipLib = {
----------------------------------------
	Version = 1,
}

function Addon.TooltipLib:SharedTooltip()
	if not self.tooltip then
		-- Create the tooltip
		local tooltipName = AddonName..".TooltipLib.Tooltip"
		self.tooltip = CreateFrame("GameTooltip", tooltipName, nil, "GameTooltipTemplate")
		self.tooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
	end

	return self.tooltip
end

function Addon.TooltipLib:TooltipLeftLines(tooltip)
	local line = 0
	local numLines = tooltip:NumLines()

	return function ()
		if line >= numLines then
			return
		end

		line = line + 1

		local fontString = tooltip[line]
		if not fontString then
			fontString = _G[tooltip:GetName().."TextLeft"..line]
			tooltip[line] = fontString
		end
		
		return fontString:GetText()
	end
end

function Addon.TooltipLib:TooltipLines(tooltip)
	local line = 0
	local numLines = tooltip:NumLines()

	return function ()
		if line >= numLines then
			return
		end

		line = line + 1

		local fontString = tooltip[line]
		if not fontString then
			fontString = _G[tooltip:GetName().."TextLeft"..line]
			tooltip[line] = fontString
		end
		
		-- Get the color
		local rgbColor = {}
		rgbColor.r, rgbColor.g, rgbColor.b = fontString:GetTextColor()
		return {
			leftText = fontString:GetText(),
			leftColor = rgbColor
		}
	end
end

function Addon.TooltipLib:StatsForBagItem(bag, slot)
	local tooltip = self:SharedTooltip()
	tooltip:ClearLines()
	tooltip:SetBagItem(bag, slot)
	return self:StatsForTooltip(tooltip)
end

function Addon.TooltipLib:StatsForInventoryItem(slot)
	local tooltip = self:SharedTooltip()
	tooltip:ClearLines()
	tooltip:SetInventoryItem("player", slot)
	return self:StatsForTooltip(tooltip)
end

function Addon.TooltipLib:StatsForLink(link)
	local tooltip = self:SharedTooltip()
	tooltip:ClearLines()
	tooltip:SetHyperlink(link)
	return self:StatsForTooltip(tooltip)
end

function Addon.TooltipLib:StatsForTooltip(tooltip)
	local stats = {}
	
	local tooltipName = tooltip:GetName()
	--Addon:DebugMessage("StatsForTooltip("..tostring(tooltipName)..") numLines="..tostring(tooltip:NumLines()))

	-- Iterate the lines of the tooltip
	for text in self:TooltipLeftLines(tooltip) do
		-- Remove codes
		text = text:gsub("|r", "")
		text = text:gsub("|c%x%x%x%x%x%x%x%x", "")

		--Addon:DebugMessage(line.." "..tostring(text):gsub("|", "||"))

		-- Ignore missing labels
		if text then
			-- Try patterns to extract value/stat pairs
			local value, stat = text:match("^([%d%+%-%,]+) ([%w%s%.]+)$")
			if not value or not stat then
				stat, value = text:match("^([%w%s%.]+) ([%d%+%-%,]+)$")
			end

			if value and stat then
				-- Strip anything unnecessary from the value so conversion goes smoothly
				value = value:gsub("[^%d%-%.]", "")

				-- Convert to a number
				local numberValue = tonumber(value)

				-- Create or add the value
				if not stats[stat] then
					stats[stat] = numberValue
				else
					stats[stat] = stats[stat] + numberValue
				end
			end
		end
	end

	return stats
end

-- /dump Outfitter.TooltipLib:StatsForBagItem(0, 1)
-- /dump Outfitter.TooltipLib:StatsForInventoryItem(1)

local _, Addon = ...

Addon.EventLib =
{
	Version = 2,
	Events = {},
	Iterators = {},
	EventFrame = CreateFrame("FRAME", nil, UIParent),
}

function Addon.EventLib:DispatchEvent(eventID, ...)
	local event = self.Events[eventID]
	if not event then
		return
	end
	
	local iterator = self.Iterators[eventID]
	if iterator then
		return
	end
	
	-- Addon:DebugMessage("Dispatching event %s", eventID)
	
	local handlers = event.Handlers

	iterator = {Index = 1, Count = #handlers}
	self.Iterators[eventID] = iterator
	while iterator.Index <= iterator.Count do
		local handler = handlers[iterator.Index]
		
		if handler.Blind then
			if handler.RefParam ~= nil then
				handler.Function(handler.RefParam, ...)
			else
				handler.Function(...)
			end
		else
			if handler.RefParam ~= nil then
				handler.Function(handler.RefParam, eventID, ...)
			else
				handler.Function(eventID, ...)
			end
		end
		
		iterator.Index = iterator.Index + 1
	end
	
	self.Iterators[eventID] = nil

	if self.PerfMonitor then
		local endTime = GetTime()
		
		self.PerfMonitor:FunctionExit(endTime)
		
		if not self.LastDumpTime
		or endTime - self.LastDumpTime > 2 then
			self.LastDumpTime = endTime
			
			self.PerfMonitor:DumpValue()
		end
	end
end

function Addon.EventLib:RegisterCustomEvent(eventID, handlerFunction, refParam, blind)
	self:RegisterEvent(eventID, handlerFunction, refParam, blind, true)
end

function Addon.EventLib:RegisterEvent(eventID, handlerFunction, refParam, blind, isCustomEvent)
	if not handlerFunction then
		error(string.format("Attempted to register a nil function pointer for event %s", eventID or "unknown"))
	end
	
	local isRegistered, index = self:EventIsRegistered(eventID, handlerFunction, refParam)
	
	if isRegistered then
		error(string.format("Attempted to register a handler twice for %s", eventID))
	end
	
	local event = self.Events[eventID]
	if not event then
		event = {}
		event.IsCustomEvent = isCustomEvent
		event.Handlers = {}

		self.Events[eventID] = event
		
		if self.EventFrame and not isCustomEvent then
			self.EventFrame:RegisterEvent(eventID)
		end
	end
	
	local handler =
	{
		Function = handlerFunction,
		RefParam = refParam,
		Blind = blind,
		IsCustomEvent = isCustomEvent
	}
	table.insert(event.Handlers, handler)
end

function Addon.EventLib:EventIsRegistered(eventID, handlerFunction, refParam)
	local event = self.Events[eventID]
	if not event then
		return false
	end
	
	for index, handler in ipairs(event.Handlers) do
		if (not handlerFunction or handler.Function == handlerFunction)
		and (not refParam or handler.RefParam == refParam) then
			return true, index
		end
	end
	
	return false
end

function Addon.EventLib:UnregisterCustomEvent(eventID, handlerFunction, refParam)
	self:UnregisterEvent(eventID, handlerFunction, refParam)
end

function Addon.EventLib:UnregisterEvent(eventID, handlerFunction, refParam)
	local isRegistered, index = self:EventIsRegistered(eventID, handlerFunction, refParam)
	if not isRegistered then
		return
	end
	
	local event = self.Events[eventID]
	local handlers = event.Handlers

	table.remove(handlers, index)
	
	if #handlers == 0 then
		self.Events[eventID] = nil
		
		if self.EventFrame and not event.IsCustomEvent then
			self.EventFrame:UnregisterEvent(eventID)
		end
	end
	
	local iterator = self.Iterators[eventID]
	
	if iterator then
		if index <= iterator.Index then
			iterator.Index = iterator.Index - 1
		end
		
		iterator.Count = iterator.Count - 1
	end
end

function Addon.EventLib:UnregisterAllEvents(handlerFunction, refParam)
	for eventID, event in pairs(self.Events) do
		self:UnregisterEvent(eventID, handlerFunction, refParam)
	end
end

Addon.EventLib.EventFrame.EventLib = Addon.EventLib

Addon.EventLib.HardwareEvents =
{
	["TRADE_SKILL_SHOW"] = true,
	["TRADE_SKILL_CLOSE"] = true,
}

Addon.EventLib.EventFrame:SetScript("OnEvent", function (frame, eventID, ...)
	local hadHardwareEvent = Addon.HasHWEvent
	Addon.HasHWEvent = Addon.HasHWEvent or Addon.EventLib.HardwareEvents[eventID]
	frame.EventLib:DispatchEvent(eventID, ...)
	Addon.HasHWEvent = hadHardwareEvent
end)

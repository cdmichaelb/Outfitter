if C_Minimap == nil then
	C_Minimap = {}
	setmetatable(C_Minimap, {__index = function (t, funcname, args) return _G[funcname] end } )
	function C_Minimap.SetTracking(vIndex, pEnabled)
		-- pEnabled was sometimes set to 1 instead of true. This forces true/false
		return SetTracking(vIndex, pEnabled == true or pEnabled == 1)
	end
end
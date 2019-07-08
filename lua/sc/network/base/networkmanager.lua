if SC and SC._data.sc_ai_toggle or restoration and restoration.Options:GetValue("SC/SC") then

-- Adds two new handlers for network messages to handle the `RestorationMod__` prefix modifications.
Hooks:PostHook( NetworkManager, "start_network", "SC_Network", function(self)
	if not self._started then
		self:register_handler("RestorationMod__connection", RestorationMod__ConnectionNetworkHandler)
		self:register_handler("RestorationMod__unit", RestorationMod__UnitNetworkHandler)
	end
end)

end
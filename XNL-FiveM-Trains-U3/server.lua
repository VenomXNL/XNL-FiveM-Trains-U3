--========================================================================
-- NOTE: Unchanged by VenomXNL
-- Original from:
-- Original Post:	 https://forum.fivem.net/t/release-trains/28841
-- Original Script:  https://github.com/Bluethefurry/FiveM-Trains/releases
--========================================================================
trainspawned = false
PlayerCount = 0
list = {}

RegisterServerEvent("playerDropped")

RegisterServerEvent("XNL-Trains:playerconnected")
AddEventHandler('XNL-Trains:playerconnected', function()
	if not list[source] then
		PlayerCount = PlayerCount + 1
		list[source] = true
		if (PlayerCount) == 1 or not trainspawned then -- new session?
			TriggerClientEvent('StartTrain', source)
			trainspawned = true
		else
			if (PlayerCount) == 0 then
				trainspawned = false
			end
		end
	end
end)

RegisterServerEvent("playerDropped")
AddEventHandler('playerDropped', function()
	if list[source] then
		PlayerCount = PlayerCount - 1
		list[source] = nil
	end
	if (PlayerCount) == 0 then
		trainspawned = false
	end
end)

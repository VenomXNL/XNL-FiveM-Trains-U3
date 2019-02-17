--========================================================================
-- NOTE: Unchanged by VenomXNL
-- Original from:
-- Original Post:	 https://forum.fivem.net/t/release-trains/28841
-- Original Script:  https://github.com/Bluethefurry/FiveM-Trains/releases
--========================================================================
PlayerCount = 0
list = {}


RegisterServerEvent("hardcap:playerActivated")
RegisterServerEvent("playerDropped")

function ActivateTrain ()
	if (PlayerCount) == 1 then
		TriggerClientEvent('StartTrain', GetHostId())
	else
		SetTimeout(15000,ActivateTrain)
	end
end

--snippet from hardcap to make PlayerCount work
-- yes i know i'm lazy
AddEventHandler('hardcap:playerActivated', function()
  if not list[source] then
    PlayerCount = PlayerCount + 1
    list[source] = true
		if (PlayerCount) == 1 then -- new session?
			SetTimeout(15000,ActivateTrain)
		end
  end
end)

AddEventHandler('playerDropped', function()
  if list[source] then
    PlayerCount = PlayerCount - 1
    list[source] = nil
  end
end)



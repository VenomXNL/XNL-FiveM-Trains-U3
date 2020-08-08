--========================================================================
-- NOTE: Unchanged by VenomXNL
-- Original from:
-- Original Post:	 https://forum.fivem.net/t/release-trains/28841
-- Original Script:  https://github.com/Bluethefurry/FiveM-Trains/releases
--========================================================================
local trainspawned = false
local trainHost = nil

RegisterServerEvent("XNL-Trains:PlayerSpawned")
AddEventHandler('XNL-Trains:PlayerSpawned', function()
	local _source = source
	SpawnTrain(_source)
end)

RegisterServerEvent("playerDropped")
AddEventHandler('playerDropped', function()
	local _source = source
	if trainHost == _source then -- If the host of the train is the source, the train disapear with him.
		local name = GetPlayerName(_source)
		if Debug then print(('XNL-Trains: Player %s with id %i has quit. Looking for another host for the trains...'):format(name,_source)) end
		trainspawned = false
		trainHost = nil
		ReplyStartTrainDone = false
		ReplyStartTrain = 0
		ChooseRandomPlayer(_source) -- We choose a random player for spawning the train
	end
end)

function ChooseRandomPlayer(leaver)
	local hostfound = false
	for _, playerId in ipairs(GetPlayers()) do -- Yeah, pretty bad "random". We just take the first player we get in the list
		if tonumber(playerId) ~= tonumber(leaver) then -- Actually, the player is still in the list of players, even if he leaved the game, so we ignore him
			SpawnTrain(playerId)
			hostfound = true
			break -- Don't need to let the for continue. We stop it.
		end
	end
	if not hostfound then
		if Debug then print('XNL-Trains: No host are available for the trains. Waiting for another player to join the server...') end
	end
end

function SpawnTrain(player)
	if not trainHost then -- If we have a host for the train, trainHost should be not nil
		if not trainspawned then -- new session or the host has leave ?
			local name = GetPlayerName(player)
			if Debug then print(('XNL-Trains: Player %s with id %i will be the host for the trains'):format(name,player)) end
			TriggerClientEvent('StartTrain', tonumber(player))
			trainspawned = true
			trainHost = player
		end
	end
end

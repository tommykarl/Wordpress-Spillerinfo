print("tkk-spillerinfo er startet")

local playerCount = 0

RegisterServerEvent('fivem_player_counter:getPlayerCount')
AddEventHandler('fivem_player_counter:getPlayerCount', function()
    TriggerClientEvent('fivem_player_counter:updatePlayerCount', -1, playerCount)
end)

RegisterServerEvent('fivem_player_counter:updatePlayerCount')
AddEventHandler('fivem_player_counter:updatePlayerCount', function(count)
    playerCount = count
end)

function GetPlayerCount()
    return playerCount
end


RegisterCommand('getplayercount', function(source, args, rawCommand)
    local playerCount = GetNumPlayerIndices()
    TriggerClientEvent('fivem_player_counter:updatePlayerCount', -1, playerCount)
end, false)

exports('GetPlayerCount', GetPlayerCount)

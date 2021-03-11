------------------------------------------------------------------------------------------------------------
--                                                                                                        --
--  ____           _           _  _    _  _     __                                                    _   --
-- |  _ \   ___   (_)  _ __   | |/ / | |/ /   / __| ___    _ __ ___    _ __ ___    __ _   _ __     __| |  --
-- | |_) | / _ \  | | | '_ \  | / /  | / /   | |    / _ \ |  _   _ \  |  _   _ \  / _  | |  _  \  / _  |  --
-- |  __/ | (_) | | | | | | | | \ \  | \ \   | |__ | (_)| | | | | | | | | | | | || |_| | | | | | | (_| |  --
-- | |     \___/  | | |_| |_| |_|\_\ |_|\_\   \___| \___/ |_| |_| |_| |_| |_| |_| \__ _| |_| |_|  \__ _|  --
--                                   Made By: poinkk815#4094                                              --
------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/me', 'Send a third person message (Proximity)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/do', 'Send an action message (Global)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/twt', 'Send a tweet (Global)', {
        {name = "Action", help = "action."}
    })
    
    TriggerEvent('chat:addSuggestion', '/ooc', 'Send an out of character message (Global)', {
        {name = "Action", help = "action."}
    })

    TriggerEvent('chat:addSuggestion', '/911', 'Send a 911 call (Global)', {
        {name = "Action", help = "action."}
    })

    TriggerEvent('chat:addSuggestion', '/showid', 'Show someone your ID name (Proximity)', {
        {name = "Action", help = "action."}
    })
end)

-- /me command --
RegisterNetEvent('SendProximityMe')
AddEventHandler('SendProximityMe', function(id, name, message)
    local myID = PlayerId()
    local pID = GetPlayerFromServerId(id)
    if pID == myID then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*ME | ^7" .. name .. "^7: " .. "^r " .. message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*ME | ^7" .. name .. "^7: " .. "^r " .. message)
    end
end)

-- /showid command --
RegisterNetEvent('SendProximityShowid')
AddEventHandler('SendProximityShowid', function(id, name, message)
    local myID = PlayerId()
    local pID = GetPlayerFromServerId(id)
    if pID == myID then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*Showid | ^7" .. name .. "^7: " .. "^r " .. message)
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
        TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*Showid | ^7" .. name .. "^7: " .. "^r " .. message)
    end
end)

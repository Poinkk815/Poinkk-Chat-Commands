------------------------------------------------------------------------------------------------------------
--                                                                                                        --
--  ____           _           _  _    _  _     __                                                    _   --
-- |  _ \   ___   (_)  _ __   | |/ / | |/ /   / __| ___    _ __ ___    _ __ ___    __ _   _ __     __| |  --
-- | |_) | / _ \  | | | '_ \  | / /  | / /   | |    / _ \ |  _   _ \  |  _   _ \  / _  | |  _  \  / _  |  --
-- |  __/ | (_) | | | | | | | | \ \  | \ \   | |__ | (_)| | | | | | | | | | | | || |_| | | | | | | (_| |  --
-- | |     \___/  | | |_| |_| |_|\_\ |_|\_\   \___| \___/ |_| |_| |_| |_| |_| |_| \__ _| |_| |_|  \__ _|  --
--                                   Made By: poinkk815#4094                                              --
------------------------------------------------------------------------------------------------------------


-- /me command --
RegisterCommand('me', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("SendProximityMe", -1, source, name, table.concat(args, " "))
end, false)

-- /do Command --
RegisterCommand('do', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent('chatMessage', -1, "^1^*Do | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

-- /showid command--
RegisterCommand('showid', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^1^*Showid | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

-- /twt command --
RegisterCommand('twt', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^5^*Twitter | ^7@" .. GetPlayerName(source) .. "^r", {30, 144, 255}, table.concat(args, " "))
end, false)

-- /occ command --
RegisterCommand('ooc', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^9^*OOC | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

-- /911 command --
RegisterCommand('911', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^1^*911 | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

-- /511 command --
RegisterCommand('511', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^3^*511 | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

-- /staff command --
RegisterCommand('Staff', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^1^*Server Staff | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
end, false)

local a = GetGameTimer()
RegisterNetEvent("FR:spawnNitroBMX",function()
    if not tFR.isInComa() and not tFR.isHandcuffed() and not insideDiamondCasino then --and not isPlayerNearPrison() then
        if GetTimeDifference(GetGameTimer(), a) > 10000 then
            a = GetGameTimer()
            tFR.notify("~g~Crafting a BMX")
            local b = tFR.getPlayerPed()
            TaskStartScenarioInPlace(b, "WORLD_HUMAN_HAMMERING", 0, true)
            Wait(5000)
            ClearPedTasksImmediately(b)
            local c = GetEntityCoords(b)
            tFR.spawnVehicle("bmx", c.x, c.y, c.z, GetEntityHeading(b), true, true, true)
        else
            tFR.notify("~r~Nitro BMX cooldown, please wait.")
        end
    else
        tFR.notify("~r~Cannot craft a BMX right now.")
    end
end)
RegisterNetEvent("FR:spawnMoped",function()
    if not tFR.isInComa() and not tFR.isHandcuffed() and not insideDiamondCasino then --and not isPlayerNearPrison() then
        if GetTimeDifference(GetGameTimer(), a) > 10000 then
            a = GetGameTimer()
            tFR.notify("~g~Crafting a Moped")
            local b = tFR.getPlayerPed()
            TaskStartScenarioInPlace(b, "WORLD_HUMAN_HAMMERING", 0, true)
            Wait(5000)
            ClearPedTasksImmediately(b)
            local c = GetEntityCoords(b)
            tFR.spawnVehicle("faggio", c.x, c.y, c.z, GetEntityHeading(b), true, true, true)
        else
            tFR.notify("~r~Nitro BMX cooldown, please wait.")
        end
    else
        tFR.notify("~r~Cannot craft a Moped right now.")
    end
end)

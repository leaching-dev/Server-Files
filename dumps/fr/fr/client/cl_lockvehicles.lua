local function a()
    local b = tFR.getPlayerPed()
    if GetEntityHealth(b) > 102 then
        local c, d = tFR.getNearestOwnedVehicle(8)
        if d ~= nil then
            if c then
                tFR.vc_toggleLock(d)
                tFR.playSound("HUD_MINI_GAME_SOUNDSET", "5_SEC_WARNING")
                Citizen.Wait(1000)
            else
                Citizen.Wait(1000)
            end
        else
            tFR.notify("No owned vehicle found nearby to lock/unlock")
        end
    else
        tFR.notify("You may not lock/unlock your vehicle whilst dead.")
    end
end
Citizen.CreateThread(function()
    while true do
        if IsDisabledControlPressed(0, 82) then
            a()
        end
        Wait(0)
    end
end)
AddEventHandler("FR:lockNearestVehicle",function()
    a()
end)
RegisterCommand("bodybag",function()
    local a = tFR.getNearestPlayer(3)
    if a then
        TriggerServerEvent("FR:requestBodyBag", a)
    else
        tFR.notify("No one dead nearby")
    end
end)

RegisterNetEvent("FR:removeIfOwned",function(b)
    local c = tFR.getObjectId(b, "bodybag_removeIfOwned")
    if c then
        if DoesEntityExist(c) then
            if NetworkHasControlOfEntity(c) then
                DeleteEntity(c)
            end
        end
    end
end)

RegisterNetEvent("FR:placeBodyBag",function()
    local d = tFR.getPlayerPed()
    local e = GetEntityCoords(d)
    local f = GetEntityHeading(d)
    SetEntityVisible(d, false, 0)
    local g = tFR.loadModel("xm_prop_body_bag")
    local h = CreateObject(g, e.x, e.y, e.z, true, true, true)
    DecorSetInt(h, "FRACVeh", 955)
    PlaceObjectOnGroundProperly(h)
    SetModelAsNoLongerNeeded(g)
    local b = ObjToNet(h)
    TriggerServerEvent("FR:removeBodybag", b)
    while GetEntityHealth(tFR.getPlayerPed()) <= 102 do
        Wait(0)
    end
    DeleteEntity(h)
    SetEntityVisible(d, true, 0)
end)

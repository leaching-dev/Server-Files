local a = false
function DisplayHelpText(b)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(b)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end

function goParachuting()
    if not a then
        a = true
        CreateThread(function()
            tFR.allowWeapon("GADGET_PARACHUTE")
            GiveWeaponToPed(PlayerPedId(), "GADGET_PARACHUTE")
            DoScreenFadeOut(3000)
            while not IsScreenFadedOut() do
                Wait(0)
            end
            local c = GetEntityCoords(tFR.getPlayerPed())
            SetEntityCoords(tFR.getPlayerPed(), c.x, c.y, c.z + 1000.0)
            DoScreenFadeIn(2000)
            Wait(2000)
            SetPlayerInvincible(tFR.getPlayerPed(), true)
            SetEntityProofs(tFR.getPlayerPed(), true, true, true, true, true, false, 0, false)
            while true do
                if a then
                    if IsPedInParachuteFreeFall(tFR.getPlayerPed()) and not HasEntityCollidedWithAnything(tFR.getPlayerPed()) then
                        ApplyForceToEntity(tFR.getPlayerPed(),true,0.0,200.0,2.5,0.0,0.0,0.0,false,true,false,false,false,true)
                    else
                        a = false
                    end
                else
                    break
                end
                Wait(0)
            end
            Wait(3000)
            SetPlayerInvincible(tFR.getPlayerPed(), false)
            SetEntityProofs(tFR.getPlayerPed(), false, false, false, false, false, false, 0, false)
        end)
    end
end

local d = {vector3(-753.74310302734, -1510.6815185547, 5.0141487121582)}
AddEventHandler("FR:onClientSpawn",function(D, E)
    if E then
		local g = function()
            drawNativeNotification("Press ~INPUT_PICKUP~ to go parachuting! (£5,000)")
        end
        local h = function()
        end
        local i = function()
            if IsControlJustPressed(1, 51) then
                TriggerServerEvent("FR:takeAmount", 5000)
                goParachuting()
            end
        end
        for j, k in pairs(d) do
            tFR.createArea("parachute_" .. j, k, 1.5, 6, g, h, i, {})
            tFR.addMarker(k.x, k.y, k.z, 1.0, 1.0, 1.0, 255, 0, 0, 170, 50, 40, false, false, true)
        end
	end
end)
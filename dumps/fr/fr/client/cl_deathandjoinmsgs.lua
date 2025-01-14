local a = false
local b = true
RegisterCommand(
    "togglekillfeed",
    function()
        if not a then
            b = not b
            if b then
                tFR.notify("~g~Killfeed is now enabled")
                SendNUIMessage({type = "killFeedEnable"})
            else
                tFR.notify("~r~Killfeed is now disabled")
                SendNUIMessage({type = "killFeedDisable"})
            end
        end
    end
)
RegisterNetEvent(
    "FR:showHUD",
    function(c)
        a = not c
        if b then
            if c then
                SendNUIMessage({type = "killFeedEnable"})
            else
                SendNUIMessage({type = "killFeedDisable"})
            end
        end
    end
)
RegisterNetEvent(
    "FR:newKillFeed",
    function(d, e, f, g, h, i, j)
        if GetIsLoadingScreenActive() then
            return
        end
        local k = "other"
        local l = tFR.getPlayerName(tFR.getPlayerId())
        if e == l or d == l then
            k = "self"
        end
        local m = GetResourceKvpString("fr_oldkillfeed") or "false"
        if m == "false" then
            oldKillfeed = false
        else
            oldKillfeed = true
        end
        if oldKillfeed and (tFR.isPlatClub() or tFR.isPlusClub()) then
            if g then
                tFR.notify("~o~" .. e .. " ~w~died.")
            else
                tFR.notify("~o~" .. d .. " ~w~killed ~o~" .. e .. "~w~.")
            end
        else
            SendNUIMessage(
                {
                    type = "addKill",
                    victim = e,
                    killer = d,
                    weapon = f,
                    suicide = g,
                    victimGroup = i,
                    killerGroup = j,
                    range = h,
                    uuid = tFR.generateUUID("kill", 10, "alphabet"),
                    category = k
                }
            )
        end
    end
)
function tFR.takeClientVideoAndUploadKills(a)
    exports["screenshot-basic"]:requestVideoUpload(
        a,
        "files[]",
        {headers = {}, isVideo = true, isManual = true, encoding = "mp4"},
        function(n)
            FRserver.killProcessed()
        end
    )
end

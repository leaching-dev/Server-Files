local loadouts = {}
local selectedLoadout = nil
local weapons = module("fr-weapons", "cfg/weapons")
local loadoutCoords = {
    vector3(457.0222, -983.0001, 30.68948), -- mission row
    vector3(1844.323, 3692.164, 34.26707), -- sandy
    vector3(-448.0566, 6018.454, 31.71638), -- paleto
    vector3(-1106.505, -826.4623, 14.2828), -- vespucci
}

RMenu.Add("policeloadouts","main",RageUI.CreateMenu("","Please Select Division",tFR.getRageUIMenuWidth(),tFR.getRageUIMenuHeight(),"fr_jobselectorui","metpd"))
RMenu.Add("policeloadouts","confirm",RageUI.CreateSubMenu(RMenu:Get("policeloadouts", "main"),"","Confirm Selection",tFR.getRageUIMenuWidth(),tFR.getRageUIMenuHeight()))

RageUI.CreateWhile(1.0, true, function()
    if RageUI.Visible(RMenu:Get('policeloadouts', 'main')) then
        RageUI.DrawContent({ header = true, glare = false, instructionalButton = false}, function()
            for k,v in pairs(loadouts) do
                RageUI.Button(k, nil, {RightBadge = "→→→"}, v.hasPermission, function(Hovered, Active, Selected)
                    if Selected then
                        selectedLoadout = k
                    end
                end, RMenu:Get('policeloadouts', 'confirm'))
            end
        end)
    end
    if RageUI.Visible(RMenu:Get('policeloadouts', 'confirm')) then
        RageUI.DrawContent({ header = true, glare = false, instructionalButton = false}, function()
            RageUI.Separator('~g~'..selectedLoadout)
            for k,v in pairs(loadouts[selectedLoadout].weapons) do
                RageUI.Separator(weapons.weapons[v].name)
            end
            RageUI.Button("Confirm", nil, {RightBadge = "→→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent('FR:selectLoadout', selectedLoadout)
                    RageUI.Visible(RMenu:Get("policeloadouts", "confirm"), false)
                    RageUI.ActuallyCloseAll()
                end
            end)
        end)
    end
end)

RegisterNetEvent('FR:gotLoadouts')
AddEventHandler('FR:gotLoadouts', function(loadoutsTable)
    loadouts = loadoutsTable
end)

AddEventHandler("FR:onClientSpawn",function(p, q)
    if q then
        local r = function(s)
        end
        local t = function(s)
            selectedLoadout = nil
            RageUI.Visible(RMenu:Get("policeloadouts", "main"), false)
            RageUI.Visible(RMenu:Get("policeloadouts", "confirm"), false)
            RageUI.ActuallyCloseAll()
        end
        local u = function(s)
            if IsControlJustPressed(1, 38) then
                TriggerServerEvent('FR:getPoliceLoadouts')
                RageUI.Visible(RMenu:Get("policeloadouts", "main"), not RageUI.Visible(RMenu:Get("policeloadouts", "main")))
            end
            local v, w, x = table.unpack(GetFinalRenderedCamCoord())
            DrawText3D(loadoutCoords[s.locationId].x,loadoutCoords[s.locationId].y,loadoutCoords[s.locationId].z,"Press [E] to open Police Loadouts",v,w,x)
        end
        for k,v in pairs(loadoutCoords) do
            tFR.createArea("police_loadouts_"..k, v, 1.5, 6, r, t, u, {locationId = k})
        end
    end
end)
local a={active=false,spawnedDecks=false,coords=vector3(0,0,0),handles={}}
local b={volume=100}
local c={}
local d=0
local e=vector3(0.0,0.0,0.0)
local f=0
local g=false
local h=false
local i={}
local j={{"Big Cone","prop_roadcone01a"}}
RMenu.Add('FRDJ','main',RageUI.CreateMenu("","DJ Mixer",tFR.getRageUIMenuWidth(),tFR.getRageUIMenuHeight(),"fr_musicui","fr_musicui"))
RMenu.Add('FRDJ','admin',RageUI.CreateSubMenu(RMenu:Get("FRDJ","main"),"","DJ Admin Menu",tFR.getRageUIMenuWidth(),tFR.getRageUIMenuHeight(),"fr_musicui", "fr_musicui"))
TriggerEvent('chat:addSuggestion','/play','Play a song on the DJ Mixer',{{name="URL",help="Video ID"}})
TriggerEvent('chat:addSuggestion','/djmenu','Toggle the DJ Mixer')
TriggerEvent('chat:addSuggestion','/djadmin','Administrate the use of the DJ Mixer')

RageUI.CreateWhile(1.0, true, function()
    if RageUI.Visible(RMenu:Get('FRDJ', 'main')) then
        RageUI.DrawContent({ header = true, glare = false, instructionalButton = false}, function()
            if inOrganHeist then
                return
            elseif not a.active then 
                if h then 
                    RageUI.Button("Start Session", "Start a new DJ Session", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                        if Selected then 
                            if tFR.getPlayerCombatTimer() == 0 and not tFR.isPlayerInRedZone() and tFR.getPlayerVehicle() == 0 then
                                setupDj()
                            else
                                tFR.notify('You can not set up a DJ deck right now.')
                            end
                        end 
                    end)
                end 
            else 
                RageUI.SliderProgress("Song Volume",b.volume,100,"Select or update the song volume",{ProgressBackgroundColor={R=0,G=0,B=0,A=255},ProgressColor={R=0,G=117,B=194,A=255}},true,function(k,m,l,n)
                    if m then 
                        if n~=b.volume then 
                            b.volume=n
                            if b.volume%10==0 or b.volume == 1 then 
                                updateVolume()
                            end
                            drawNativeText("DJ~w~: Volume Updated")
                        end 
                    end
                    b.volume=n 
                end)
                RageUI.Button("Skip Ahead","Skip 20 seconds ahead",{},true,function(k,l,m)
                    if m then 
                        skipDj(true)
                        drawNativeText("DJ~w~: Song Skipped")
                    end 
                end)
                RageUI.Button("Skip Back","Skip 20 seconds back",{},true,function(k,l,m)
                    if m then 
                        skipDj(false)
                        drawNativeText("DJ~w~: Song Skipped")
                    end 
                end)
                RageUI.Button("Stop Song","Stop the current song",{},true,function(k,l,m)
                    if m then 
                        stopDjSong()
                        drawNativeText("DJ~w~: Song Stopped")
                    end 
                end)
                RageUI.Button("End Session","Stop the current DJ Session",{},true,function(k,l,m)
                    if m then 
                        stopDj()
                        drawNativeText("DJ~w~: Session Ended")
                    end 
                end)
                RageUI.Button("Help","Assistance message",{},true,function(k,l,m)
                    if m then 
                        TriggerEvent("FR:showNotification",
                        {   
                            text="Use /play, The Video ID is the ID at the end of the YouTube URL after =",
                            height="200px",
                            width="auto",
                            colour="#FFF",
                            background="#32CD32",
                            pos="bottom-right",
                            icon="success"
                        },
                        5000)
                    end 
                end)
            end 
        end)
    end
    if RageUI.Visible(RMenu:Get('FRDJ', 'admin')) then
        RageUI.DrawContent({ header = true, glare = false, instructionalButton = false}, function()
            if table.count(i)>0 then 
                for o,p in pairs(i)do 
                    if i[o]~=nil then 
                        local distance = round2(#(tFR.getPlayerCoords()-p[2]),2)
                        RageUI.ButtonWithStyle("ID: "..p[3].." - Started: "..p[5].."","Name: "..p[4].." Distance Away: "..distance.." metres",{RightLabel="→→→"},true,function(k,l,m)
                            if m then 
                                TriggerServerEvent("FR:adminStopSong",p[1])
                            end 
                        end)
                    end 
                end 
            end 
        end)
    end
end)

function round2(q,r)
    return math.floor(q*math.pow(10,r)+0.5)/math.pow(10,r)
end
RegisterNetEvent("FR:playDjSong")
AddEventHandler("FR:playDjSong",function(s,coords,t,u)
    local v=tFR.getPlayerCoords()
    local w=#(coords-v)
    if w<30.0 then 
        SendNUIMessage({type='djPlay',song=s,volume=90})
        drawNativeText("DJ "..u.."~w~: New Song playing")
        for o,p in pairs(c)do
            if p[1]==coords then 
                c[o]=nil 
            end 
        end
        c[t]={coords,s,true}
    else 
        c[t]={coords,s,false}
    end 
end)
RegisterNetEvent("FR:requestCurrentProgress")
AddEventHandler("FR:requestCurrentProgress",function(s,coords)
    SendNUIMessage({type='requestProgress'})
    if not g then 
        if specificSongPlaying(coords)then 
            d=s
            e=coords
            SendNUIMessage({type='requestProgress'})
        end 
    end 
end)
RegisterNetEvent("FR:toggleDjMenu")
AddEventHandler("FR:toggleDjMenu",function()
    RageUI.Visible(RMenu:Get('FRDJ','main'),true)
    h=true 
end)
RegisterNetEvent("FR:toggleDjAdminMenu")
AddEventHandler("FR:toggleDjAdminMenu",function(x)
    RageUI.Visible(RMenu:Get('FRDJ','admin'),true)
    i=x 
end)
RegisterNetEvent("FR:finaliseSong")
AddEventHandler("FR:finaliseSong",function(y)
    if a.active then 
        TriggerServerEvent("FR:playDjSongServer",y,a.coords)
    end 
end)
RegisterNetEvent("FR:updateDjVolume")
AddEventHandler("FR:updateDjVolume",function(coords,z)
    if specificSongPlaying(coords)then 
        SendNUIMessage({type='djVolume',volume=z})
    end 
end)
RegisterNetEvent("FR:stopSong")
AddEventHandler("FR:stopSong",function(coords)
    local A=false
    for o,p in pairs(c)do 
        if p[1]==coords then 
            A=true
            c[o]=nil 
        end 
    end
    if A then 
        SendNUIMessage({type='djStop'})
    end 
end)
RegisterNetEvent("FR:skipDj")
AddEventHandler("FR:skipDj",function(coords,B)
    if specificSongPlaying(coords)then 
        if B then 
            SendNUIMessage({type='djSkipAhead'})
        else 
            SendNUIMessage({type='djSkipBack'})
        end 
    end 
end)
function skipDj(B)
    if songPlaying()then 
        TriggerServerEvent("FR:skipServer",a.coords,B)
    end 
end
function setupDj()
    a.active=true
    a.coords=tFR.getPlayerCoords()
    a.spawnedDecks=true
    createDjObject(0.0,1.5,0.0,'ba_prop_battle_dj_stand',0.0)
    createDjObject(-1.5,1.5,0.0,'ba_prop_battle_club_speaker_large',180.0)
    createDjObject(1.5,1.5,0.0,'ba_prop_battle_club_speaker_large',180.0)
    createDjObject(0.0,-1.2,0.0,'prop_studio_light_01',180.0)
end
function createDjObject(C,D,E,F,G)
    local F=tFR.loadModel(F)
    coords=GetOffsetFromEntityInWorldCoords(tFR.getPlayerPed(),C,D,E)
    local H=CreateObject(F,coords.x,coords.y,coords.z,true,true,true)
    table.insert(a.handles,H)
    PlaceObjectOnGroundProperly(H)
    FreezeEntityPosition(H,true)
    local I=GetEntityHeading(tFR.getPlayerPed())
    SetEntityHeading(H,I+G)
end
function stopDj()
    if songPlaying()then 
        TriggerServerEvent("FR:stopSongServer",a.coords)
    end
    a.active=false
    a.spawnedDecks=false
    for o in pairs(a.handles)do 
        DeleteObject(a.handles[o])
    end
    a.handles={}
end
function stopDjSong()
    if songPlaying()then 
        TriggerServerEvent("FR:stopSongServer",a.coords)
    end 
end
function updateVolume()
    if songPlaying()then 
        TriggerServerEvent("FR:updateVolumeServer",a.coords,b.volume)
    end 
end
function specificSongPlaying(coords)
    local A=false
    for o,p in pairs(c)do 
        if p[1]==coords and p[3]then 
            A=true 
        end 
    end
    return A 
end
function songPlaying()
    local A=false
    for o,p in pairs(c)do 
        if p[1]==a.coords then 
            A=true 
        end 
    end
    return A 
end
function func_checkDjSongs(J)
    for o,p in pairs(c)do 
        if#(J.playerCoords-p[1])>45.0 then 
            c[o][3]=false
            SendNUIMessage({type='djStop'})
        else 
            if not c[o][3]then 
                g=true
                TriggerServerEvent('FR:requestCurrentProgressServer',o,p[1])
                c[o][3]=true 
            end 
        end 
    end 
end
tFR.createThreadOnTick(func_checkDjSongs)
RegisterNUICallback('returnProgress',function(K,L)
    if K.progress~=nil then 
        if K.progress~=0 then 
            TriggerServerEvent("FR:returnProgressServer",d,e,K.progress)
        end 
    end
    L('return')
end)
RegisterNetEvent("FR:returnProgress")
AddEventHandler("FR:returnProgress",function(s,coords,M,N)
    if g then 
        if specificSongPlaying(coords)then 
            c[s]=nil
            c[s]={coords,s,true}
            SendNUIMessage({type='djPlay',song=N,volume=90})
            Wait(1000)
            SendNUIMessage({type='skipTo',time=M})
            g=false 
        end 
    end 
end)
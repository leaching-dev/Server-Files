function tFR.request(a,b,c)
  SendNUIMessage({act="request",id=a,text=tostring(b),time=c})
  tFR.playSound("HUD_MINI_GAME_SOUNDSET","5_SEC_WARNING")
end
RegisterNUICallback("request",function(d,e)
  if d.act=="response"then 
      FRserver.requestResult({d.id,d.ok})
  end 
end)
function tFR.announce(f,g)
  SendNUIMessage({act="announce",background=f,content=g})
end
function tFR.setDiv(h,i,g)
  SendNUIMessage({act="set_div",name=h,css=i,content=g})
end
function tFR.setDivCss(h,i)
  SendNUIMessage({act="set_div_css",name=h,css=i})
end
function tFR.setDivContent(h,g)
  SendNUIMessage({act="set_div_content",name=h,content=g})
end
function tFR.divExecuteJS(h,j)
  SendNUIMessage({act="div_execjs",name=h,js=j})
end
function tFR.removeDiv(h)
  SendNUIMessage({act="remove_div",name=h})
end
local k=false
function tFR.isPaused()
  return k 
end

local controls = {
  phone = {
    -- PHONE CONTROLS
    up = {3,172},
    down = {3,173},
    left = {3,174},
    right = {3,175},
    select = {3,176},
    cancel = {3,177},
    open = {3,31123}, -- K to open the menu
  },
  request = {
    yes = {0,83}, -- +
    no = {0,84} -- -
  }
}

Citizen.CreateThread(function()
  while true do 
      if IsDisabledControlJustPressed(table.unpack(controls.request.yes))then 
          SendNUIMessage({act="event",event="requestAccept"})
      end
      if IsDisabledControlJustPressed(table.unpack(controls.request.no))then 
          SendNUIMessage({act="event",event="requestDeny"})
      end
      local l=IsPauseMenuActive()
      if l and not k then 
          k=true
          TriggerEvent("fr:pauseChange",k)
      elseif not l and k then 
          k=false
          TriggerEvent("fr:pauseChange",k)
      end
      Wait(0)
  end 
end)
AddEventHandler("fr:pauseChange",function(k)
  SendNUIMessage({act="pause_change",paused=k})
end)
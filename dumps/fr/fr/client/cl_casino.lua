insideDiamondCasino = false
AddEventHandler("FR:onClientSpawn",function(a, b)
    if b then
        local c = vector3(1121.7922363281, 239.42251586914, -50.440742492676)
        local d = function(e)
            insideDiamondCasino = true
            tFR.setCanAnim(false)
            tFR.overrideTime(12, 0, 0)
            TriggerEvent("FR:enteredDiamondCasino")
            TriggerServerEvent('FR:getChips')
        end
        local f = function(e)
            insideDiamondCasino = false
            tFR.setCanAnim(true)
            tFR.cancelOverrideTimeWeather()
            TriggerEvent("FR:exitedDiamondCasino")
        end
        local g = function(e)
        end
        tFR.createArea("diamondcasino", c, 100.0, 20, d, f, g, {})
    end
end)
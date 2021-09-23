local thirst;
local hunger;
CreateThread(function()
    while true do 
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            hunger = status.getPercent()
        end)
        TriggerEvent('esx_status:getStatus', 'thirst', function(lul)
            thirst = lul.getPercent()
        end)
        SendNUIMessage({
            action = 'update',
            hunger = hunger,
            thirst = thirst
        })
        Wait(800)
    end
end)
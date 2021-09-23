local thirst = 100;
local hunger = 100;

AddEventHandler("esx_status:onTick", function(status)
    for _, v in pairs(status) do
        if v.name == 'hunger' then hunger = v.percent
        elseif v.name == 'thirst' then thirst = v.percent
        end

        SendNUIMessage({
            action = 'update',
            hunger = hunger,
            thirst = thirst
        })
    end
end)
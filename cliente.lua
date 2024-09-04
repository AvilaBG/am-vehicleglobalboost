Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then
            local veh = GetVehiclePedIsIn(ped, false)
            local vehClass = GetVehicleClass(veh)
            TriggerServerEvent('am-vehicleglobalboost:server:applyVehicleSpeedBoost', veh, vehClass)
        else
            Citizen.Wait(5000)
        end
    end
end)

RegisterNetEvent('am-vehicleglobalboost:client:applyBoost')
AddEventHandler('am-vehicleglobalboost:client:applyBoost', function(veh, speed)
    ModifyVehicleTopSpeed(veh, speed)
end)
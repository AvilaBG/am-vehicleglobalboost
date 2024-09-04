local classesConfigs = {
    [0] = Config.Compacts,
    [1] = Config.Sedans,
    [2] = Config.SUVs,
    [3] = Config.Coupes,
    [4] = Config.Muscle,
    [5] = Config.SportsClassics,
    [6] = Config.Sports,
    [7] = Config.Super,
    [8] = Config.Motorcycles,
    [9] = Config.OffRoad,
    [10] = Config.Industrial,
    [11] = Config.Utility,
    [12] = Config.Vans,
    [13] = Config.Cycles,
    [14] = Config.Boats,
    [15] = Config.Helicopters,
    [16] = Config.Planes,
    [17] = Config.Service,
    [18] = Config.Emergency,
    [19] = Config.Military,
    [20] = Config.Commercial,
    [21] = Config.Trains
}

local customSpeeds = {}
for i = 1, #Config.CustomSpeeds do
    customSpeeds[GetHashKey(Config.CustomSpeeds[i].model)] = Config.CustomSpeeds[i].speed
end

RegisterNetEvent('am-vehicleglobalboost:server:applyVehicleSpeedBoost')
AddEventHandler('am-vehicleglobalboost:server:applyVehicleSpeedBoost', function(veh, vehicleClass)
    local speed
    if Config.Handling == "classes" then
        speed = classesConfigs[vehicleClass] or 0
    elseif Config.Handling == "vehicles" then
        local vehicleHash = GetEntityModel(veh)
        speed = customSpeeds[vehicleHash] or 0
    end

    if speed and speed > 0 then
        TriggerClientEvent('am-vehicleglobalboost:client:applyBoost', -1, veh, speed)
    else
        print("Nenhuma configuração encontrada para o veículo ou classe especificada.")
    end
end)

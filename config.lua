-- Versão original do script por iLeaksy | https://github.com/iLeaksy/leaksy_vehiclesystem |
-- Versão server-sided por AvilaMn |  |
Config = {}

-- Escolha entre “classes” ou “vehicles”
-- A opção “classes” aplicará o impulso a todos os veículos dessa classe.
-- A opção “vehicles” aplicará o impulso ao veículo especificado através do seu modelo
Config.Handling = "classes"

-- Boost por classe de veículo
Config.Compacts = 40.00
Config.Sedans = 40.00
Config.SUVs = 40.00
Config.Coupes = 40.00
Config.Muscle = 40.00
Config.SportsClassics = 40.00
Config.Sports = 40.00
Config.Super = 40.00
Config.Motorcycles = 40.00
Config.OffRoad = 30.00
Config.Industrial = 30.00
Config.Utility = 30.00
Config.Vans = 30.00
Config.Cycles = 30.00
Config.Boats = 30.00
Config.Helicopters = 00.00
Config.Planes = 00.00
Config.Service = 30.00
Config.Emergency = 70.00
Config.Military = 30.00
Config.Commercial = 30.00
Config.Trains = 30.00

-- Boost por veículo
Config.CustomSpeeds = {
    {model = "police", speed = 101.00},
    {model = "police2", speed = 102.00},
    {model = "police3", speed = 103.00},
}
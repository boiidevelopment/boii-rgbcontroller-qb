----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}

-- Core settings for renamed cores
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    GarageEvent = 'qb-garage:server:checkVehicleOwner' -- The name of your checkvehicleowner callback. Default; qb-garage:server:checkVehicleOwner
}

-- Item settings
Config.Items = {
    Controller = 'rgbc', -- The name of your controller item required to open ui
    Kit = 'rgbkit', -- The name of your kit item required to install
    Time = math.random(5,10) -- Time in seconds to install kit
}

-- Animation settings
Config.Animations = {
    Fit = {
        Dict = 'mini@repair', -- Animation dictonary
        Anim = 'fixing_a_ped', -- Animation
        Flags = 49 -- Animation flags
    }
}
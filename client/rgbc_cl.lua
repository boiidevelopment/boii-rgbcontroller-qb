----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT CHANGE ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING! SUPPORT WILL NOT BE PROVIDED IF YOU BREAK THE SCRIPT! --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local GarageEvent = Config.CoreSettings.GarageEvent
--<!>-- DO NOT CHANGE ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING! SUPPORT WILL NOT BE PROVIDED IF YOU BREAK THE SCRIPT! --<!>--

--<!>-- NOTIFICATIONS START --<!>--
RegisterNetEvent('boii-rgbcontroller:notify')
AddEventHandler('boii-rgbcontroller:notify', function(msg, type)
    Core.Functions.Notify(msg,type)
end)
--<!>-- NOTIFICATIONS END --<!>--

--<!>-- FIT KIT --<!>--
RegisterNetEvent('boii-rgbcontroller:cl:FitKit', function()
    local player = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(player, false)
    if isinstalling then TriggerEvent('boii-rgbcontroller:notify', Language['alreadyinstall'], 'error') return end
    isinstalling = true
    if IsPedInAnyVehicle(player, true) and GetPedInVehicleSeat(vehicle, -1) then
        if IsToggleModOn(vehicle, 22) then
            TriggerEvent('boii-rgbcontroller:notify', Language['haskit'], 'error')
        else
            TriggerServerEvent('boii-rgbcontroller:sv:RemoveItem', Config.Items.Kit, 1)
            Core.Functions.Progressbar('rgbc_fitkit', Language['install'], Config.Items.Time*1000, false, true, {
                disableMovement = true, 
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = false,
            }, {
                animDict = Config.Animations.Fit.Dict,
                anim = Config.Animations.Fit.Anim,
                flags = Config.Animations.Fit.Flags
            }, {}, {}, function()
                SetVehicleModKit(vehicle, 0)
			    ToggleVehicleMod(vehicle, 22, true)
                SetVehicleNeonLightEnabled(vehicle, 0, true)
                SetVehicleNeonLightEnabled(vehicle, 1, true)
                SetVehicleNeonLightEnabled(vehicle, 2, true)
                SetVehicleNeonLightEnabled(vehicle, 3, true)
                isinstalling = false
            end, function() -- Cancel
                TriggerServerEvent('boii-rgbcontroller:sv:AddItem', Config.Items.Kit, 1)
                TriggerEvent('inventory:client:busy:status', false)
                TriggerEvent('boii-rgbcontroller:notify', Language['cancelled'], 'primary')
                isinstalling = false
            end) 
        end
    else
        TriggerEvent('boii-rgbcontroller:notify', Language['nocar'], 'error')
    end
end)
--<!>-- FIT KIT --<!>--

--<!>-- OPEN CONTROLLER --<!>--
RegisterNetEvent('boii-rgbcontroller:cl:OpenController', function()
    local player = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(player, false)
    local plate = GetVehicleNumberPlateText(vehicle)
    if IsPedInAnyVehicle(player, true) and GetPedInVehicleSeat(vehicle, -1) then
        if IsToggleModOn(vehicle, 22) then
            Core.Functions.TriggerCallback(GarageEvent, function(owned)
                if owned then
                    SetNuiFocus(true, true)
                    SendNUIMessage({open = true})
                else
                    TriggerEvent('boii-rgbcontroller:notify', Language['notowner'], 'error')
                end
            end, plate)
        else
            TriggerEvent('boii-rgbcontroller:notify', Language['nokit'], 'error')
        end
    else
        TriggerEvent('boii-rgbcontroller:notify', Language['nocar'], 'error')
    end
end)
--<!>-- OPEN CONTROLLER --<!>--

--<!>-- CLOSE CONTROLLER --<!>--
RegisterNUICallback('CloseController', function()
    SetNuiFocus(false, false)
    SendNUIMessage({open = false})
end)
--<!>-- CLOSE CONTROLLER --<!>--

--<!>-- CHANGE COLOURS --<!>--
RegisterNUICallback('ChangeColour', function(data)
    local args = tonumber(data.args)
    local player	= PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
    if args == 1 then
        SetVehicleHeadlightsColour(vehicle, 0) 
        SetVehicleNeonLightsColour(vehicle, 222, 222, 255)
    elseif args == 2 then
        SetVehicleHeadlightsColour(vehicle, 1)
        SetVehicleNeonLightsColour(vehicle, 2, 21, 255)
    elseif args == 3 then
        SetVehicleHeadlightsColour(vehicle, 2) 
        SetVehicleNeonLightsColour(vehicle, 3, 83, 255)
    elseif args == 4 then
        SetVehicleHeadlightsColour(vehicle, 3)
        SetVehicleNeonLightsColour(vehicle, 0, 255, 140)
    elseif args == 5 then
        SetVehicleHeadlightsColour(vehicle, 4)
        SetVehicleNeonLightsColour(vehicle, 94,	255, 1)
    elseif args == 6 then
        SetVehicleHeadlightsColour(vehicle, 5)
        SetVehicleNeonLightsColour(vehicle, 255, 255, 0)
    elseif args == 7 then
        SetVehicleHeadlightsColour(vehicle, 6)
        SetVehicleNeonLightsColour(vehicle, 255, 150, 0)
    elseif args == 8 then
        SetVehicleHeadlightsColour(vehicle, 7)
        SetVehicleNeonLightsColour(vehicle, 255, 62, 0)
    elseif args == 9 then
        SetVehicleHeadlightsColour(vehicle, 8)
        SetVehicleNeonLightsColour(vehicle, 255, 1, 1)
    elseif args == 10 then
        SetVehicleHeadlightsColour(vehicle, 9)
        SetVehicleNeonLightsColour(vehicle, 255, 50, 100)
    elseif args == 11 then
        SetVehicleHeadlightsColour(vehicle, 10)
        SetVehicleNeonLightsColour(vehicle, 255, 5, 190)
    elseif args == 12 then
        SetVehicleHeadlightsColour(vehicle, 11)
        SetVehicleNeonLightsColour(vehicle, 35,	1, 255)	
    elseif args == 13 then
        SetVehicleHeadlightsColour(vehicle, 12)
        SetVehicleNeonLightsColour(vehicle, 15, 3, 255)
    end
end)
--<!>-- CHANGE COLOURS --<!>--

--<!>-- TOGGLE ON/OFF --<!>--
RegisterNUICallback('Toggle', function()
    local player = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(player)
	if IsVehicleNeonLightEnabled(vehicle) then
        SetVehicleLights(vehicle, 1)
        SetVehicleNeonLightEnabled(vehicle, 0, false)
        SetVehicleNeonLightEnabled(vehicle, 1, false)
        SetVehicleNeonLightEnabled(vehicle, 2, false)
        SetVehicleNeonLightEnabled(vehicle, 3, false)
    else
        SetVehicleLights(vehicle, 0)
        SetVehicleNeonLightEnabled(vehicle, 0, true)
        SetVehicleNeonLightEnabled(vehicle, 1, true)
        SetVehicleNeonLightEnabled(vehicle, 2, true)
        SetVehicleNeonLightEnabled(vehicle, 3, true)
    end
end)
--<!>-- TOGGLE ON/OFF --<!>--
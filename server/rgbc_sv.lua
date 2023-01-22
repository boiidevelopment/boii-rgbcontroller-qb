----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT CHANGE ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING! SUPPORT WILL NOT BE PROVIDED IF YOU BREAK THE SCRIPT! --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT CHANGE ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING! SUPPORT WILL NOT BE PROVIDED IF YOU BREAK THE SCRIPT! --<!>--

--<!>-- SERVER PRINT --<!>--
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('^5--<^3!^5>-- ^7BOII ^5| ^7DEVELOPMENT ^5--<^3!^5>-- ^7UTLITY: RGB CONTROLER V2.0.0 ^5--<^3!^5>--^7')
end)
--<!>-- SERVER PRINT --<!>--

--<!>-- ADD/REMOVE ITEM EVENTS START --<!>--
RegisterServerEvent('boii-rgbcontroller:sv:RemoveItem', function(itemremove, amount)
    local src = source
    local pData = Core.Functions.GetPlayer(source)
    if pData.Functions.RemoveItem(itemremove, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[itemremove], 'remove', amount)
    end
end)
RegisterServerEvent('boii-rgbcontroller:sv:AddItem', function(itemadd, amount)
    local src = source
    local pData = Core.Functions.GetPlayer(source)
    if pData.Functions.AddItem(itemadd, tonumber(amount)) then
        TriggerClientEvent('inventory:client:ItemBox', src, Core.Shared.Items[itemadd], 'add', amount)
    end
end)
--<!>-- ADD/REMOVE ITEM EVENTS END --<!>--

--<!>-- CONTROLLER --<!>--
Core.Functions.CreateUseableItem(Config.Items.Controller, function(source, item)
    TriggerClientEvent('boii-rgbcontroller:cl:OpenController', source)
end)
--<!>-- CONTROLLER --<!>--

--<!>-- KIT --<!>--
Core.Functions.CreateUseableItem(Config.Items.Kit, function(source, item)
    TriggerClientEvent('boii-rgbcontroller:cl:FitKit', source)
end)
--<!>-- KIT --<!>--
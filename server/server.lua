ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('mikuss_craftkamizelkagive', function(source, cb) -- KAMIZELKA
	local xPlayer = ESX.GetPlayerFromId(source)
  	local _source = source

	xPlayer.addInventoryItem('szwalnia_paczka_kamza', 1) 
	TriggerClientEvent('esx:showNotification', _source, 'Wytworzyłeś Kamizelke')
  
    cb({
        data = wystarczy,
    })
end)

ESX.RegisterServerCallback('mikuss_szwalnia_spadochron_lol', function(source, cb) -- SPADOCHRON
	local xPlayer = ESX.GetPlayerFromId(source)
  	local _source = source

	xPlayer.addInventoryItem('szwalnia_paczka_spadochron', 1) 
	TriggerClientEvent('esx:showNotification', _source, 'Wytworzyłeś Kamizelke')
  
    cb({
        data = wystarczy,
    })
end)

RegisterServerEvent('mikuss_craftcheckkamza')
AddEventHandler('mikuss_craftcheckkamza', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem('szwalnia_paczka_kamza')
    
    if item.count >= 5 then
       TriggerClientEvent('mikuss_kamzacraft_proggres', _source)
    else
       TriggerClientEvent('esx:showNotification', source, 'Nie posiadasz potrzebnych przedmiotów')
    end
end)

ESX.RegisterServerCallback('mikuss_craftkamizelkagive2', function(source, cb) -- KAMIZELKA 2
	local xPlayer = ESX.GetPlayerFromId(source)
  	local _source = source
    xPlayer.removeInventoryItem('szwalnia_paczka_kamza', 5)
	xPlayer.addInventoryItem('szwalnia_kamza_50', 1) 
	TriggerClientEvent('esx:showNotification', _source, 'Wytworzyłeś Kamizelke')
  
    cb({
        data = wystarczy,
    })
end)

-- DWA

RegisterServerEvent('mikuss_craftcheckkamza2')
AddEventHandler('mikuss_craftcheckkamza2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem('szwalnia_paczka_kamza')
    
    if item.count >= 12 then
       TriggerClientEvent('mikuss_kamzacraft_proggres2', _source)
    else
       TriggerClientEvent('esx:showNotification', source, 'Nie posiadasz potrzebnych przedmiotów')
    end
end)

ESX.RegisterServerCallback('mikuss_craftkamizelkagive3', function(source, cb) -- KAMIZELKA 3
	local xPlayer = ESX.GetPlayerFromId(source)
  	local _source = source
    xPlayer.removeInventoryItem('szwalnia_paczka_kamza', 12)
	xPlayer.addInventoryItem('szwalnia_kamza_100', 1) 
	TriggerClientEvent('esx:showNotification', _source, 'Wytworzyłeś Kamizelke')
  
    cb({
        data = wystarczy,
    })
end)

-- TRZY

RegisterServerEvent('mikuss_craftcheckkamza3')
AddEventHandler('mikuss_craftcheckkamza3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem('szwalnia_paczka_spadochron')
    
    if item.count >= 10 then
       TriggerClientEvent('mikuss_kamzacraft_proggres3', _source)
    else
       TriggerClientEvent('esx:showNotification', source, 'Nie posiadasz potrzebnych przedmiotów')
    end
end)

ESX.RegisterServerCallback('mikuss_craftkamizelkagive4', function(source, cb) -- KAMIZELKA 3
	local xPlayer = ESX.GetPlayerFromId(source)
  	local _source = source
    xPlayer.removeInventoryItem('szwalnia_paczka_spadochron', 10)
	xPlayer.addInventoryItem('szwalnia_spadochron_lol', 1) 
	TriggerClientEvent('esx:showNotification', _source, 'Wytworzyłeś Kamizelke')
  
    cb({
        data = wystarczy,
    })
end)

-- USUWANIE

ESX.RegisterServerCallback('mikuss_usuwaniekamzy50', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
  	local _source = source
    xPlayer.removeInventoryItem('szwalnia_kamza_50', 1)
  
    cb({
        data = wystarczy,
    })
end)

ESX.RegisterServerCallback('mikuss_usuwaniekamzy100', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
  	local _source = source
    xPlayer.removeInventoryItem('szwalnia_kamza_100', 1)
  
    cb({
        data = wystarczy,
    })
end)

-- BOSS MENU

TriggerEvent('esx_phone:registerNumber', 'szwalnia', 'Szwalnia', true, true)
TriggerEvent('esx_society:registerSociety', 'szwalnia', 'Szwalnia', 'society_szwalnia', 'society_szwalnia', 'society_szwalnia', {type = 'private'})
ESX = nil

local pojazdlock = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    modelHash = GetHashKey('cs_lestercrest')
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    createNPC() 
    createNPC2()
    createNPC3()
end)

function createNPC()
    
	created_ped = CreatePed(0, 'cs_lestercrest' , 708.7295, -958.8983, 30.3953 -1, 172.7818)

	FreezeEntityPosition(created_ped, true)
	SetEntityInvincible(created_ped, true)
	SetBlockingOfNonTemporaryEvents(created_ped, true)
end

function createNPC2()
    
	created_ped = CreatePed(0, 'cs_lestercrest' , 723.9664, -976.6437, 24.1356 -1, 178.1118)

	FreezeEntityPosition(created_ped, true)
	SetEntityInvincible(created_ped, true)
	SetBlockingOfNonTemporaryEvents(created_ped, true)
end

function createNPC3()
    
	created_ped = CreatePed(0, 'cs_lestercrest' , 1181.8745, -3113.8042, 6.0281 -1, 89.5876)

	FreezeEntityPosition(created_ped, true)
	SetEntityInvincible(created_ped, true)
	SetBlockingOfNonTemporaryEvents(created_ped, true)
end

-- EVENTS

RegisterNetEvent('mikuss_craftingchecking1')
AddEventHandler('mikuss_craftingchecking1', function()
    exports["memorygame"]:thermiteminigame(5, 3, 3, 5,
    function()
        ESX.TriggerServerCallback('mikuss_craftkamizelkagive', function(cb)
        end)
    end,
    function()
        ESX.ShowNotification('Nie udało się wytworzyć przedmiotu')
    end)
end)

RegisterNetEvent('mikuss_craftingchecking2')
AddEventHandler('mikuss_craftingchecking2', function()
    exports["memorygame"]:thermiteminigame(5, 3, 3, 5,
    function()
        ESX.TriggerServerCallback('mikuss_szwalnia_spadochron_lol', function(cb)
        end)
    end,
    function()
        ESX.ShowNotification('Nie udało się wytworzyć przedmiotu')
    end)
end)

RegisterNetEvent('mikuss_carspawnszwalnia')
AddEventHandler('mikuss_carspawnszwalnia', function()
    if pojazdlock == false then
       ESX.Game.SpawnVehicle(1162065741, vector3(721.8958, -981.5918, 24.0930), 264.5460, function(vehicle)
        local playerPed = GetPlayerPed(-1)
        TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
        SetNewWaypoint(1180.29, -3113.60)
        pojazdlock = true
        end)
       Wait(60000*1)
       pojazdlock = false
    else
       ESX.ShowNotification('Pojazd możesz wyciągnąć co 60 sekund!')
    end
end)

-- TARGETS
exports['qtarget']:AddCircleZone("szwalnia_crafting", vector3(710.76, -969.5, 30.45), 0.85, {
    name="szwalnia_crafting",
    useZ=true,
    --debugPoly=true
    }, {
        options = {
            {
                event = "mikuss_craftingchecking1",
                icon = "fa-solid fa-right-to-bracket",
                label = "Weź Paczkę na Kamizelki",
                job = "szwalnia",
            },
            {
                event = "mikuss_craftingchecking2",
                icon = "fa-solid fa-right-to-bracket",
                label = "Weź Paczkę na Spadochron",
                job = "szwalnia",
            },
        },
        distance = 1.5
})

exports['qtarget']:AddBoxZone("szwalnia_pojazd", vector3(723.99, -976.58, 24.13), 1, 0.8, {
    name="szwalnia_pojazd",
    heading=355,
    --debugPoly=true,
    minZ=20.93,
    maxZ=24.93
    }, {
        options = {
            {
                event = "mikuss_carspawnszwalnia",
                icon = "fa-solid fa-hands",
                label = "Wyciągnij Pojazd",
                job = "szwalnia",
            },
        },
        distance = 2.0
})

exports['qtarget']:AddBoxZone("szwalnia_selling", vector3(1181.74, -3113.8, 6.03), 1, 0.8, {
    name="szwalnia_selling",
    heading=270,
    --debugPoly=true,
    minZ=2.83,
    maxZ=6.83
    }, {
        options = {
            {
                event = "mikuss_kamzacraftchecking",
                icon = "fa-solid fa-right-to-bracket",
                label = "Zrób Kamizelkę",
                job = "szwalnia",
            },
            {
                event = "mikuss_kamzacraftchecking2",
                icon = "fa-solid fa-right-to-bracket",
                label = "Zrób Wzmocnioną Kamizelkę",
                job = "szwalnia",
            },
            {
                event = "mikuss_kamzacraftchecking3",
                icon = "fa-solid fa-right-to-bracket",
                label = "Zrób Spadochron",
                job = "szwalnia",
            },
        },
        distance = 2.0
})

-- ROBIENIE TYCH KAMZY ETC

RegisterNetEvent('mikuss_kamzacraftchecking')
AddEventHandler('mikuss_kamzacraftchecking', function()
    TriggerServerEvent('mikuss_craftcheckkamza')
end)

RegisterNetEvent('mikuss_kamzacraft_proggres')
AddEventHandler('mikuss_kamzacraft_proggres', function()
    exports["memorygame"]:thermiteminigame(5, 3, 3, 5,
    function()
        ESX.TriggerServerCallback('mikuss_craftkamizelkagive2', function(cb)
        end)
    end,
    function()
        ESX.ShowNotification('Nie udało się wytworzyć przedmiotu')
    end)
end)

-- DWA 2

RegisterNetEvent('mikuss_kamzacraftchecking2')
AddEventHandler('mikuss_kamzacraftchecking2', function()
    TriggerServerEvent('mikuss_craftcheckkamza2')
end)

RegisterNetEvent('mikuss_kamzacraft_proggres2')
AddEventHandler('mikuss_kamzacraft_proggres2', function()
    exports["memorygame"]:thermiteminigame(5, 3, 3, 5,
    function()
        ESX.TriggerServerCallback('mikuss_craftkamizelkagive3', function(cb)
        end)
    end,
    function()
        ESX.ShowNotification('Nie udało się wytworzyć przedmiotu')
    end)
end)

-- TRZY

RegisterNetEvent('mikuss_kamzacraftchecking3')
AddEventHandler('mikuss_kamzacraftchecking3', function()
    TriggerServerEvent('mikuss_craftcheckkamza3')
end)

RegisterNetEvent('mikuss_kamzacraft_proggres3')
AddEventHandler('mikuss_kamzacraft_proggres3', function()
    exports["memorygame"]:thermiteminigame(5, 3, 3, 5,
    function()
        ESX.TriggerServerCallback('mikuss_craftkamizelkagive4', function(cb)
        end)
    end,
    function()
        ESX.ShowNotification('Nie udało się wytworzyć przedmiotu')
    end)
end)

-- UZYWANIE KAMZ

RegisterNetEvent('mikuss_uzyciekamzy50')
AddEventHandler('mikuss_uzyciekamzy50', function()
    local player = PlayerPedId()
    FreezeEntityPosition(player, true)
    Wait(5000)
    FreezeEntityPosition(player, false)
    ESX.TriggerServerCallback('mikuss_usuwaniekamzy50', function(source, cb)
        SetPedArmour(playerPed, 50)
    end)
end)

RegisterNetEvent('mikuss_uzyciekamzy100')
AddEventHandler('mikuss_uzyciekamzy100', function()
    local player = PlayerPedId()
    FreezeEntityPosition(player, true)
    Wait(10000)
    FreezeEntityPosition(player, false)
    ESX.TriggerServerCallback('mikuss_usuwaniekamzy100', function(source, cb)
        SetPedArmour(playerPed, 100)
    end)
end)

-- BOSS MENU

exports['qtarget']:AddCircleZone("szwalnia_bossmenu", vector3(707.26, -967.59, 30.51), 0.45, {
    name="szwalnia_bossmenu",
    useZ=true,
    --debugPoly=true
    }, {
        options = {
            {
                action = function()
                    openBossMenuSzwalnia()
                end,
                icon = "fa-sharp fa-solid fa-laptop-file",
                label = "Otwórz Menu",
                job = {
                    ["szwalnia"] = 4
                },
            },
        },
        distance = 1.5
})

function openBossMenuSzwalnia()
    ESX.UI.Menu.CloseAll()
    TriggerEvent('esx_society:openBossMenu', 'szwalnia', function(data, menu)
      menu.close()
    end)
end
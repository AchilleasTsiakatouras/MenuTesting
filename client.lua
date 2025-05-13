RegisterCommand("menu", function()
    SetNuiFocus(true, true)
    SendNUIMessage({ action = "show" })
end)

RegisterNUICallback("closeMenu", function(data, cb)
    SetNuiFocus(false, false)
    cb("ok")
end)

RegisterNUICallback("spawnCar", function(data, cb)
    local model = GetHashKey("adder")
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(100) end

    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local vehicle = CreateVehicle(model, coords.x + 2.0, coords.y, coords.z, GetEntityHeading(playerPed), true, false)
    TaskWarpPedIntoVehicle(playerPed, vehicle, -1)

    cb("ok")
end)

RegisterNUICallback("heal", function(data, cb)
    SetEntityHealth(PlayerPedId(), 200)
    cb("ok")
end)

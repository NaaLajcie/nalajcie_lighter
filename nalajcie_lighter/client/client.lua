ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('nalajcie:lighter')
AddEventHandler('nalajcie:lighter', function()
    local playerPed = PlayerPedId()
    local Kordy = GetEntityCoords(playerPed)

    local success = lib.progressBar({
        duration = 5000,
        label = 'arson...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            combat = true,
        },
        anim = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            clip = 'machinic_loop_mechandplayer',
        },
    })

    if success then
        local forwardVector = GetEntityForwardVector(playerPed)
        local spawnPoint = vector3(Kordy.x + forwardVector.x, Kordy.y + forwardVector.y, Kordy.z - 1)
        TaskStartScenarioInPlace(playerPed, 'machinic_loop_mechandplayer', 0, true)

        Citizen.Wait(500) -- Poczekaj chwilę przed stworzeniem ognia

        local fireObject = StartScriptFire(spawnPoint.x, spawnPoint.y, spawnPoint.z, 14, false)
        Citizen.Wait(5000)
        RemoveScriptFire(fireObject)

        ClearPedTasksImmediately(playerPed)
    end
end)
ESX = exports['es_extended']:getSharedObject()

ESX.RegisterUsableItem('lighter', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('nalajcie:lighter', source)
end)
RegisterCommand("clearchat", function(source, args) 
    if IsPlayerAceAllowed(source, "chat.clear") then
        TriggerClientEvent("chat:clear", -1)
        Citizen.Wait(10)
        TriggerClientEvent('chatMessage', -1, "[^3SYSTEM^0] Chat has been cleared by an admin")
        Print("Chat has been cleared by ID: " .. source .. " Name: " .. GetPlayerName(source))
    else 
        TriggerClientEvent('chatMessage', -1, "[^3SYSTEM^0] Access Denied")
        print("A user with the ID tried to run the clearchat script without having proper perms ID: " .. source .. " Name: " .. GetPlayerName(source))
    end
end, false)



print("Made by DX Development. For support visit our discord @ https://dsc.gg/dmansolutions")
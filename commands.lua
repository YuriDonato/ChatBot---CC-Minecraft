-- Commands list for chatbot
local chatbot = peripheral.wrap("back")

local function commandsList(commands)
        if commands == "ola glados" then
            commands.sayHello(username)
        end
    
        if commands == "glados, me conte uma piada" then
            commands.sendJoke(username)
        end

        if commands == "glados, qual a taxa de energia principal?" then
            commands.sayEnergy(username)
        end

        if commands == "glados, me passa diorito" then
            commands.inventory.receiveDioritoPolido(username)
        end
end
return{
    commandsList = commandsList
}

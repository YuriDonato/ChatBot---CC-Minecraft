-- Commands list for chatbot
local chatbot = require "chatBot"
local inventory = require "inventoryManager"

local function commandsList(commands, username)
        if commands == "ola glados" then
            chatbot.sayHello(username)
        end
    
        if commands == "glados, me conte uma piada" then
            chatbot.sendJoke()
        end

        if commands == "glados, qual a taxa de energia principal?" then
            chatbot.sayEnergy()
        end

        if commands == "glados, me passa diorito" then
            inventory.receiveDioritoPolido(username)
        end
end

return{
    commandsList = commandsList
}
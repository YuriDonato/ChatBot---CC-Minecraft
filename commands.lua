-- Commands list for chatbot
local chatbot = require "chatBot"
local inventory = require "inventoryManager"

local function commandsList(commands, username)
        if commands == "ola glados" then
            chatbot.sayHello(username)
        end
    
        if commands == "glados, me conte uma piada" then
            chatbot.sendJoke("pt_br")
        end

        if commands == "glados, tell me a joke" then
            chatbot.sendJoke("en_us")
        end

        if commands == "glados, qual a taxa de energia principal?" then
            chatbot.sayEnergy()
        end

        if commands == "glados, me passa diorito" then
            inventory.receiveDioritoPolido(username)
        end

        if commands == "glados reiniciar" then
            chatbot.handleReload()
            os.reboot()
        end

        if commands == "glados, me conte um segredo" then
            chatbot.saySecret(username)
        end
end

return{
    commandsList = commandsList
}
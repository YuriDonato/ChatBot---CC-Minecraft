local chatbot = peripheral.wrap("back")
local chatBot = require "chatBot"
local commandsAll = require "commands"
local inventoryManager = require "inventoryManager"
local commands = commandsAll.commandsList(commands)


function start()
    
    -- Infinite loop to listen for chat events
    while true do
        local event, username, message, uuid, isHidden = os.pullEvent("chat")
            if commands then
                chatBot.sayHello(username)
            end

    
    end
end


return {
    start = start
}
local chatbot = peripheral.wrap("back")
local chatBot = require "chatBot"
local commandsAll = require "commands"


function start()
    
    -- Infinite loop to listen for chat events
    while true do
        local event, username, message, uuid, isHidden = os.pullEvent("chat")
                commandsAll.commandsList(message, username)
    end
end


return {
    start = start
}
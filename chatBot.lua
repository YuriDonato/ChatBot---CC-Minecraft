-- Wrapping the chatbot peripheral
local chatbot = peripheral.wrap("back")

-- Wrapping the energy peripheral
local detector = peripheral.find("energyDetector")

local jokesAll = require "jokes/pt_br"

local jokes = jokesAll.jokes


-- Get Diorito Function
local inventory = require "inventoryManager"

-- Function to send a joke to the chat
local function sendJoke(username)
    local joke = jokes[math.random(#jokes)]
        chatbot.sendMessage(joke, "GLADOS", "<>", "&b")
end

-- Function to say Hello
local function sayHello(username)
    chatbot.sendMessage("Ola " .. username .. ", bem-vindo.", "GLADOS", "<>", "&b")
end

-- Function to say actual energy flow
local function sayEnergy(username)
    local energy = detector.getTransferRate()
        chatbot.sendMessage("O fluxo de energia principal eh de " .. energy .. " RF/t.", "GLADOS", "<>", "&b")
end

return{
    sendJoke = sendJoke,
    sayHello = sayHello,
    sayEnergy = sayEnergy
}
-- Wrapping the chatbot peripheral
local chatbot = peripheral.wrap("back")

-- Wrapping the energy peripheral
local detector = peripheral.find("energyDetector")

local jokesPT = require "jokes/pt_br"
local jokesEN = require "jokes/en_us"

local jokesPT = jokesPT.jokes
local jokesEN = jokesEN.jokes


-- Get Diorito Function
local inventory = require "inventoryManager"

-- Function to send a joke to the chat
local function sendJoke(language)
    if language == "pt_br" then
        local joke = jokesPT[math.random(#jokesPT)]
            chatbot.sendMessage(joke, "GLADOS", "<>", "&3")
    end
    if language == "en_us" then
        local joke = jokesEN[math.random(#jokesEN)]
        chatbot.sendMessage(joke, "GLADOS", "<>", "&3")
    end
end

-- Function to say Hello
local function sayHello(username)
    chatbot.sendMessage("Ola " .. username .. ", bem-vindo.", "GLADOS", "<>", "&3")
end

-- Function to say actual energy flow
local function sayEnergy()
    local energy = detector.getTransferRate()
        chatbot.sendMessage("O fluxo de energia principal eh de " .. energy .. " RF/t.", "GLADOS", "<>", "&3")
end

local function handleReload()
    chatbot.sendMessage("Reiniciando o computador.", "GLADOS", "<>", "&3")
end

local function saySecret(username)
    chatbot.sendMessage("Ola " .. username .. ", sabia que §kpau §kque §knasce §ktorto §kmija §kfora §kda §kbacia?", "GLADOS", "<>", "&3")
end


return{
    sendJoke = sendJoke,
    sayHello = sayHello,
    sayEnergy = sayEnergy,
    handleReload = handleReload,
    saySecret = saySecret
}
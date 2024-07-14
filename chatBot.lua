-- Wrapping the chatbot peripheral
local chatbot = peripheral.wrap("back")

-- Wrapping the energy peripheral
local detector = peripheral.find("energyDetector")

-- Table of jokes
local jokes = {
    "Por que o livro de matematica se suicidou? Porque tinha muitos problemas.",
    "Por que a vaca foi para o espaco? Para se encontrar com o vacuo!",
    "O que o pato disse para a pata? Vem qua!",
    "Qual eh o rei dos queijos? O reiqueijao.",
    "Qual eh o cumulo do desperdicio? Passar um trote para o orelhao."
}

-- Function to send a joke to the chat
local function sendJoke(username)
    local joke = jokes[math.random(#jokes)]
    chatbot.sendMessage(joke, "GLADOS", "<>", "&b")
end

-- Function to say Hello
local function sayHello(username)
    chatbot.sendMessage("Olá " .. username .. ", bem-vindo.", "GLADOS", "<>", "&b")
end

-- Function to say actual energy flow
local function sayEnergy(username)
    local energy = detector.getTransferRate()
    chatbot.sendMessage("O fluxo de energia principal eh de " .. energy .. " RF/t.", "GLADOS", "<>", "&b")
end

function start()
    -- Infinite loop to listen for chat events
    while true do
        local event, username, message, uuid, isHidden = os.pullEvent("chat")

        if message == "oi glados" then
            sayHello(username)
        end
        
        if message == "glados, me conte uma piada" then
            sendJoke(username)
        end

        if message == "glados, qual a taxa de energia principal?" then
            sayEnergy(username)
        end
    end
end

return {
    start = start
}
-- Wrapping the chatbot peripheral
local chatbot = peripheral.wrap("back")

-- Table of jokes
local jokes = {
    "Por que o livro de matematica se suicidou? Porque tinha muitos problemas.",
    "Por que a vaca foi para o espaco? Para se encontrar com o vacuo!",
    "O que o pato disse para a pata? Vem qua!",
    "Qual eh o rei dos queijos? O reiqueijao.",
    "Qual eh o cumulo do desperdicio? Passar um trote para o orelhao."
}

-- Infinite loop to listen for chat events
while true do
    local event, username, message, uuid, isHidden = os.pullEvent("chat")

    if message == "oi glados" then
        chatbot.sendMessage("Olá " .. username .. ", bem-vindo.", "GLADOS", "<>", "&b", 30)
    end
    
    if message == "glados, me conte uma piada" then
        local joke = jokes[math.random(#jokes)]
        chatbot.sendMessage("" .. joke, "GLADOS", "<>", "&b", 30)
    end
end

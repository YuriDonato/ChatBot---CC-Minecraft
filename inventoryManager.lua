local chatbot = peripheral.wrap("back")

-- Wrapping the Inventory Manager peripheral
local manager1 = peripheral.find("up")
local manager2 = peripheral.find("left")

-- Function to receive blocks
function receiveDioritoPolido(username)
    if(username == "TiozaoDosGames") then
        local freeSlot = manager1.getFreeSlot()
        manager1.addItemToPlayer("left", {name="minecraft:cobblestone", toSlot=freeSlot, count=64})
    elif(username == "HeadHSM") then
        local freeSlot = manager2.getFreeSlot()
        manager2.addItemToPlayer("up", {name="minecraft:cobblestone", toSlot=freeSlot, count=64})
    else
        print("Username not found")
        chatbot.sendMessage("Voce nao eh um dos donos do Kybe", "GLADOS", "<>", "&b")
    end
end

return {
    receiveDioritoPolido = receiveDioritoPolido
}
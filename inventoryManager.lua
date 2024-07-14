local chatbot = peripheral.wrap("back")

-- Wrapping the Inventory Manager peripheral
-- local manager1 = peripheral.wrap("up")
-- local manager2 = peripheral.wrap("left")

local managers = { peripheral.find("inventoryManager") }

local manager1 = managers[1]
local manager2 = managers[2]

-- Function to receive blocks
function receiveDioritoPolido(username)
    if(username == "TiozaoDosGames") then
        local freeSlot = manager1.getFreeSlot()
        manager1.addItemToPlayer("left", {name="minecraft:polished_diorite", toSlot=36, count=64})
    end
    if(username == "HeadHSM") then
        local freeSlot = manager2.getFreeSlot()
        manager2.addItemToPlayer("up", {name="minecraft:polished_diorite", toSlot=freeSlot, count=64})
    end
end

return {
    receiveDioritoPolido = receiveDioritoPolido
}
--Screen for Debbuging
local main = require "main"

while true do
    term.clear()
    term.setCursorPos(1,1)
    term.write("Sistema rodando")
    term.setCursorPos(16,1)
    textutils.slowWrite("....", 3)
    main.start()
end
function loadScreen(size)
    term.clear()
    i = 0
    const x, y = term.getSize()
    term.setCursorPos(x/2, y/2)
    term.write("Iniciando o Sistema")
    term.setCursorPos(x/2, y/2 - 1)
    while i <= size do
        term.write(".")
        i++
    end
    -- textutils.slowWrite("....", 3)
end

function startup()
    loadScreen(10)
    term.setCursorPos(16,1)
end

return {startup = startup}
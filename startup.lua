--Screen for Debbuging
local main = require "main"
local term = require "terminal/terminal"

while true do
    term.startup()
    main.start()
end
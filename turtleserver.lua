require("lib/hazmat/turtle_remote")
require("lib/hazmat/keyInterrupt")
local function q_exit() keyInterrupt(keys.q) end

local function ctl()
    while true do
        id, msg = rednet.receive(os.computerLabel())
        if msg = nil then return
        else rednet.send(id, msg, os.computerLabel())
    end
end

rednet.open("left")
parallel.waitForAny(ctl, q_exit)

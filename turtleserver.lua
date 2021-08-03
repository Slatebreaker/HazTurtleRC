require("/lib/hazmat/turtle_remote")
require("/lib/hazmat/keyInterrupt")
local function q_exit() keyInterrupt(keys.q) end

local function ctl()
    func = nil
    while func == nil do
        id, msg = rednet.receive(os.computerLabel())
        print(id.. "> Received: " .. msg)
        func, args = turtle_remote(msg)
        rednet.send(id, msg, os.computerLabel())
    end
end

rednet.open("left")
print("Server started. run \"ctl " .. os.computerLabel() .. "\" in your terminal to connect.")
while true do
    ctl()
    parallel.waitForAny(ctl, func)
end

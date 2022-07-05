require("lib/hazmat/keys")
local server  = ...
rednet.open("back")
local file = fs.open(".lastctl", "w")
local lastctl = file.write(server)
file.close()
while true do
    io.write(server .. "> ")
    print(keyctl(server))
    sleep(0.2)
end

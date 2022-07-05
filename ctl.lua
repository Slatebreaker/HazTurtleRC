require("lib/hazmat/keys")
rednet.open("back")
local file = fs.open(".lastctl", "w")
local lastctl = file.write(...)
file.close()
while true do
    io.write(server .. "> ")
    print(keyctl(...))
    sleep(0.2)
end

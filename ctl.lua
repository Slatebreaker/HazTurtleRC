local function startserver(server)
    if not server then
        print("Error: please specify a turtle name.")
        return
    end
    rednet.open("back")
    local file = fs.open(".lastctl", "w")
    local lastctl = file.write(server)
    file.close()
    while true do
        io.write(server .. "> ")
        print(keyctl(server))
        sleep(0.2)
    end
end

local function keyctl(server)

    local tab = false
    local _, key = os.pullEvent("key")

    if key == keys.tab then
        cmd = read(); tab = true;
    elseif key == keys.enter then
        cmd = cmd
    elseif key == keys.w then
        cmd = "mf"
    elseif key == keys.a then
        cmd = "tl"
    elseif key == keys.s then
        cmd = "mb"
    elseif key == keys.d then
        cmd = "tr"
    elseif key == keys.space then
        cmd = "mu"
    elseif key == keys.leftShift then
        cmd = "md"
    elseif key == keys.r then
        cmd = "du"
    elseif key == keys.f then
        cmd = "df"
    elseif key == keys.v then
        cmd = "dd"
    elseif key == keys.t then
        cmd = "pu"
    elseif key == keys.g then
        cmd = "pf"
    elseif key == keys.b then
        cmd = "pd"
    else
        cmd = nil
    end
    if cmd ~= nil then
        rednet.broadcast(cmd, server)
        if tab == false then
            return cmd
        end
    end
end

startserver(...)
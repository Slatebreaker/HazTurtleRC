rednet.open("back")
local bot, msg = ...
rednet.broadcast(
    msg,
    bot
)

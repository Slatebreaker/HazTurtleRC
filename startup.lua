if turtle
and peripheral.find("modem")
then
  shell.openTab("turtleserver.lua")
  shell.switchTab(2)
elseif pocket
and peripheral.find("modem")
then
  local file = fs.open(".lastctl", "r")
  local lastctl = ""
  if file then
    lastctl = file.readAll()
    file.close()
  end
  if lastctl then
    shell.openTab("ctl "..lastctl)
    shell.switchTab(2)
  end
end

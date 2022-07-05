if turtle
and peripheral.find("modem")
then
  shell.openTab("turtleserver.lua")
  shell.switchTab(2)
elseif pocket
and peripheral.find("modem")
then
  local file = fs.open(".lastctl", "r")
  if file then
    local lastctl = file.readAll()
    file.close()
  end
  shell.openTab("ctl "..lastctl)
  shell.switchTab(2)
end

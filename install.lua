local url="https://raw.githubusercontent.com/HazmatDrone/cc-turtlecode/master/"

function uninstall(file)
	fs.delete(file);
end

function update(file)
	uninstall(file)
	shell.execute("wget", url .. file, file);
end

local programs = {
	"/lib/hazmat/digbasic",
	"/lib/hazmat/keyInterrupt",
	"/lib/hazmat/keys",
	"/lib/hazmat/remotestop",
	"/lib/hazmat/selectblock",
	"/lib/hazmat/turtle_remote",

	"/lib/yoshi/1x2_bridge",
	"/lib/yoshi/1x_ceil.lua",
	"/lib/yoshi/3x2_bridge",
	"/lib/yoshi/tw",
	
	"/ctl.lua"
	"/dig.lua"
	"/install.lua"
	"/msg.lua"
	"/speaker.lua"
	"/turtleserver.lua"
}

for _, program in pairs(programs) do
	update(program)
end

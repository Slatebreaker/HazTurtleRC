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
	
	"startup.lua": "common",
	"/ctl.lua",
	"/dig.lua",
	"/msg.lua",
	"/speaker.lua",
	"/turtleserver.lua",
	"/update.lua"
}

for program, programtype in pairs(programs) do
	if programtype == "common" then
		update(program)
	elseif programtype == "pocket" and pocket then
		update(program)
	elseif programtype == "turtle" and turtle then
		update(program)
	else
		uninstall(program)
	end
	
end

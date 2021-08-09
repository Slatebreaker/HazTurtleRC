local url="https://raw.githubusercontent.com/HazmatDrone/cc-turtlecode/master/"

local programslist = {
	common = {
		"/lib/hazmat/keyInterrupt",

		"startup.lua",

		"/update.lua"
	},
	turtle = {
		"/lib/hazmat/digbasic",
		"/lib/hazmat/turtle_remote",
		"/lib/hazmat/remotestop",
		"/lib/hazmat/selectblock",
		
		"/lib/yoshi/tw",
		"/lib/yoshi/1x2_bridge",

		"/lib/yoshi/3x2_bridge",
		
		"/turtleserver.lua",
		"/dig.lua"
	},
	pocket = {
		"/lib/hazmat/keys",
		
		"/ctl.lua",
		"/msg.lua"
	},
	
	depreciated = {
		"/speaker.lua",
		"/lib/yoshi/1x_ceil.lua",
	}
}

function uninstall(file)
	fs.delete(file);
end

function update(file)
	uninstall(file)
	shell.execute("wget", url .. file, file);
end

for programtype, programs in pairs(programslist) do
	for _, program in pairs(programs) do
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
end

os.reboot()

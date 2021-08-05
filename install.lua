local url="https://raw.githubusercontent.com/HazmatDrone/cc-turtlecode/master/"

function update(file)
	fs.delete(file);
	shell.execute("wget", url .. file, file);
end

update("install.lua")

local repo="HazmatDrone/cc-turtlecode"

-- Recursively obtains all files from a GitHub URL
local function get_files(url)
	if folder == null then folder = "" end
	for _,v in pairs(unserialiseJSON(http.get(url))) do
		if v.type == "dir" then
			if not fs.isDir(v.path) then
				fs.makeDir(v.path)
			end
			get_files(v.url, v.path)
		else
			local file = fs.open(v.path, "w")
			file.write(http.get(v.download_url))
			file.close()
		end
	end
end

-- 
get_files("https://api.github.com/repos/" .. url .. "/contents")
os.reboot()

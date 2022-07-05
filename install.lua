-- Repo to install from
local repo="HazmatDrone/cc-turtlecode"

-- Recursively obtains all files and folders from a GitHub API URL
local function get_files(url)
	if folder == null then folder = "" end
	for _,data in pairs(textutils.unserialiseJSON(http.get(url).readAll())) do
		if data.type == "dir" then
			if not fs.isDir(data.path) then
				fs.makeDir(data.path)
			end
			get_files(data.url, data.path)
		else
			local file = fs.open(data.path, "w")
			file.write(http.get(data.download_url))
			file.close()
		end
	end
end

-- Gets files from the GitHub API based on repo at top of file
get_files("https://api.github.com/repos/" .. repo .. "/contents")
os.reboot()

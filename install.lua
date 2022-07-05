-- Repo to install from
local repo="HazmatDrone/cc-turtlecode"

-- Recursively obtains all files and folders from a GitHub API URL
local function get_files(url)
	if folder == null then folder = "" end
	for _,v in ipairs(http.get(url)) do
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

-- Gets files from the GitHub API based on repo at top of file
get_files("https://api.github.com/repos/" .. repo .. "/contents")
os.reboot()

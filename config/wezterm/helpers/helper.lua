local wezterm = require("wezterm")

local M = {}

local function write_appearance_to_file(appearance)
	local home = os.getenv("HOME")
	if not home then
		wezterm.log_error("HOME environment variable is not set.")
		return
	end

	local file_path = home .. "/.appearance"
	local file, err = io.open(file_path, "w")
	if not file then
		wezterm.log_error("Error opening file: " .. err)
		return
	end

	file:write(appearance)
	file:close()
end

local function get_appearance()
	local appearance = "Dark"
	if wezterm.gui then
		appearance = wezterm.gui.get_appearance() -- Light or Dark
	end

	write_appearance_to_file(appearance)

	return appearance
end

M.is_dark = function()
	return get_appearance():find("Dark")
end

M.scheme_for_appearance = function()
	if M.is_dark() then
		return "rose-pine"
	else
		return "rose-pine-dawn"
	end
end

M.get_random_entry = function(tbl)
	local keys = {}
	for key, _ in ipairs(tbl) do
		table.insert(keys, key)
	end
	local randomKey = keys[math.random(1, #keys)]
	return tbl[randomKey]
end

return M

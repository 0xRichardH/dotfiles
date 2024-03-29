local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- ================== Helper functions <START> ==================
local helper = {}

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

helper.is_dark = function()
	return get_appearance():find("Dark")
end

helper.scheme_for_appearance = function()
	if helper.is_dark() then
		return "rose-pine"
	else
		return "rose-pine-dawn"
	end
end

--
-- helper.get_random_entry = function(tbl)
-- 	local keys = {}
-- 	for key, _ in ipairs(tbl) do
-- 		table.insert(keys, key)
-- 	end
-- 	local randomKey = keys[math.random(1, #keys)]
-- 	return tbl[randomKey]
-- end

local key_helper = {}

key_helper.multiple_actions = function(keys)
	local actions = {}
	for key in keys:gmatch(".") do
		table.insert(actions, act.SendKey({ key = key }))
	end
	table.insert(actions, act.SendKey({ key = "\n" }))
	return act.Multiple(actions)
end

key_helper.key_table = function(mods, key, action)
	return {
		mods = mods,
		key = key,
		action = action,
	}
end

key_helper.ctrl_key = function(key, action)
	return key_helper.key_table("CTRL", key, action)
end

key_helper.cmd_key = function(key, action)
	return key_helper.key_table("CMD", key, action)
end

key_helper.cmd_to_tmux_prefix = function(key, tmux_key)
	return key_helper.cmd_key(
		key,
		act.Multiple({
			act.SendKey({ mods = "CTRL", key = "s" }),
			act.SendKey({ key = tmux_key }),
		})
	)
end
-- ================== Helper functions <END>  ==================

-- ================== Listen on Events <START> ==================
local io = require("io")
local os = require("os")

wezterm.on("trigger-vim-with-scrollback", function(window, pane)
	-- Retrieve the text from the pane
	local text = pane:get_lines_as_text(pane:get_dimensions().scrollback_rows)

	-- Create a temporary file to pass to vim
	local name = os.tmpname()
	local f = io.open(name, "w+")
	if not f then
		wezterm.log_error("Error opening file: " .. name)
		return
	end
	f:write(text)
	f:flush()
	f:close()

	-- Open a new window running vim and tell it to open the file
	window:perform_action(
		act.SpawnCommandInNewWindow({
			args = { "nvim", name },
		}),
		pane
	)

	-- Wait "enough" time for vim to read the file before we remove it.
	-- The window creation and process spawn are asynchronous wrt. running
	-- this script and are not awaitable, so we just pick a number.
	--
	-- Note: We don't strictly need to remove this file, but it is nice
	-- to avoid cluttering up the temporary directory.
	wezterm.sleep_ms(1000)
	os.remove(name)
end)
-- ================== Listen on Events <END>  ===================

local custom_configs = {
	automatically_reload_config = true,

	set_environment_variables = {
		TERM = "xterm-256color",
		LC_ALL = "en_US.UTF-8",
	},

	-- windows
	color_scheme = helper.scheme_for_appearance(), -- rose-pine-dawn, rose-pine-moon, rose-pine, Catppuccin Mocha
	window_background_opacity = 1,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	hide_tab_bar_if_only_one_tab = true,
	scrollback_lines = 36000,
	adjust_window_size_when_changing_font_size = false,
	debug_key_events = false,
	enable_tab_bar = false,

	-- fonts
	font = wezterm.font_with_fallback({
		-- {
		-- 	family = helper.get_random_entry({
		-- 		"Monaspace Argon",
		-- 		"Monaspace Krypton",
		-- 		"Monaspace Neon",
		-- 		"Monaspace Radon",
		-- 		"Monaspace Xenon",
		-- 	}),
		-- 	weight = "Medium",
		-- 	harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" },
		-- },
		-- {
		-- 	family = "Monaspace Radon",
		-- 	weight = "Medium",
		-- 	harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt" },
		-- 	-- ss01: ligatures related to the equals glyph like != and ===.
		-- 	-- ss02: ligatures related to the greater than or less than operators.
		-- 	-- ss03: ligatures related to arrows like -> and =>.
		-- 	-- ss04: ligatures related to markup, like </ and />.
		-- 	-- ss05: ligatures related to the F# programming language, like |>.
		-- 	-- ss06: ligatures related to repeated uses of # such as ## or ###.
		-- 	-- ss07: ligatures related to the asterisk like ***.
		-- 	-- ss08: ligatures related to combinations like .= or .-.
		-- },
		-- {
		-- 	family = "CommitMono",
		-- 	weight = "Regular",
		-- 	harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "cv01", "cv02" },
		-- 	-- ss01: Ligatures <= != ===
		-- 	-- ss02: Arrows >-> =>
		-- 	-- ss03: Smart case (1:1) 2+3
		-- 	-- ss04: Symbol spacing ... <<
		-- 	-- ss05: Smart kerning (immi)
		-- 	-- cv01: Alt. 'a'
		-- 	-- cv02: Alt. 'g'
		-- },
		{ family = "Comic Mono", weight = "Regular", stretch = "Normal", italic = false },
		{ family = "Symbols Nerd Font Mono", scale = 0.85, italic = false },
		{ family = "Noto Color Emoji" },
	}),
	font_size = 18.0,
	use_cap_height_to_scale_fallback_fonts = true,
	line_height = 1.2,
	-- cell_width = 1.1,

	-- keybindings
	disable_default_key_bindings = false,
	leader = { key = "m", mods = "CMD" },
	keys = {
		--
		-- vim
		key_helper.cmd_key("[", act.SendKey({ mods = "CTRL", key = "o" })),
		key_helper.cmd_key("]", act.SendKey({ mods = "CTRL", key = "i" })),
		-- go to files
		key_helper.cmd_key("p", key_helper.multiple_actions(":GoToFile")),
		-- go to commands
		key_helper.cmd_key("P", key_helper.multiple_actions(":GoToCommand")),
		-- quit vim
		key_helper.cmd_key("q", key_helper.multiple_actions(":qa!")),

		--
		-- tmux
		-- tmux window selection
		key_helper.cmd_to_tmux_prefix("1", "1"),
		key_helper.cmd_to_tmux_prefix("2", "2"),
		key_helper.cmd_to_tmux_prefix("3", "3"),
		key_helper.cmd_to_tmux_prefix("4", "4"),
		key_helper.cmd_to_tmux_prefix("5", "5"),
		key_helper.cmd_to_tmux_prefix("6", "6"),
		key_helper.cmd_to_tmux_prefix("7", "7"),
		key_helper.cmd_to_tmux_prefix("8", "8"),
		key_helper.cmd_to_tmux_prefix("9", "9"),

		-- Rename the current tmux window
		key_helper.cmd_to_tmux_prefix(",", ","),
		-- clear tmux screen
		key_helper.cmd_to_tmux_prefix("d", "C"),
		-- split tmux window vertically
		key_helper.cmd_to_tmux_prefix("e", "|"),
		-- split tmux window horizontally
		key_helper.cmd_to_tmux_prefix("E", "-"),
		-- open git manager 'jesseduffield/lazygit'
		key_helper.cmd_to_tmux_prefix("g", "g"),
		-- use (cmd+j) to open the session manager popup (t)
		key_helper.cmd_to_tmux_prefix("j", "T"),
		-- switch to the last tmux session
		key_helper.cmd_to_tmux_prefix("l", "L"),
		-- open file manager 'sxyazi/yazi'
		key_helper.cmd_key("o", key_helper.multiple_actions("yazi")),
		-- create a new tmux window
		key_helper.cmd_to_tmux_prefix("t", "c"),
		-- open URL (cmd+u)
		key_helper.cmd_to_tmux_prefix("u", "u"),
		-- kill the current tmux pane
		key_helper.cmd_to_tmux_prefix("w", "x"),

		-- Control
		key_helper.ctrl_key("E", act.EmitEvent("trigger-vim-with-scrollback")),
	},
}

for k, v in pairs(custom_configs) do
	config[k] = v
end

return config

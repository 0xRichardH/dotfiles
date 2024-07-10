local wezterm = require("wezterm")
local act = wezterm.action
local keys = require("keys")
local helper = require("helpers.helper")
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

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
	window_background_opacity = 0.85,
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
	keys = keys.setup(),
}

for k, v in pairs(custom_configs) do
	config[k] = v
end

return config

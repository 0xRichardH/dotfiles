local wezterm = require("wezterm")
local config = {
	automatically_reload_config = true,
}
local act = wezterm.action

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- windows
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.75
config.hide_tab_bar_if_only_one_tab = true
config.scrollback_lines = 36000
config.window_decorations = "RESIZE"

-- fonts
config.font = wezterm.font_with_fallback({
	{ family = "Victor Mono", weight = "Bold" },
	{ family = "Symbols Nerd Font Mono", scale = 0.75 },
})
config.font_size = 17.0
config.line_height = 1.0
config.cell_width = 1.0
config.use_cap_height_to_scale_fallback_fonts = true

-- keybindings
config.disable_default_key_bindings = false
config.leader = { key = "m", mods = "CMD" }
config.keys = {
	--
	-- vim
	-- go to files
	{
		key = "p",
		mods = "CMD",
		action = act.SendString(":GoToFile\n"),
	},
	-- go to commands
	{
		key = "p",
		mods = "CMD|SHIFT",
		action = act.SendString(":GoToCommand\n"),
	},

	--
	-- tmux
	-- tmux window selection
	{ key = "1", mods = "CMD", action = act.SendString("\x021") },
	{ key = "2", mods = "CMD", action = act.SendString("\x022") },
	{ key = "3", mods = "CMD", action = act.SendString("\x023") },
	{ key = "4", mods = "CMD", action = act.SendString("\x024") },
	{ key = "5", mods = "CMD", action = act.SendString("\x025") },
	{ key = "6", mods = "CMD", action = act.SendString("\x026") },
	{ key = "7", mods = "CMD", action = act.SendString("\x027") },
	{ key = "8", mods = "CMD", action = act.SendString("\x028") },
	{ key = "9", mods = "CMD", action = act.SendString("\x029") },
	-- Rename the current tmux window
	{ key = ",", mods = "CMD", action = act.SendString("\x02,") },
	-- split tmux window vertically
	{ key = "e", mods = "CMD", action = act.SendString("\x02|") },
	-- split tmux window horizontally
	{ key = "e", mods = "CMD|SHIFT", action = act.SendString("\x02-") },
	-- start tmux search mode
	{ key = "f", mods = "CMD|SHIFT", action = act.SendString("\x02\x5b\x2f") },
	-- start file search mod
	{ key = "f", mods = "CMD", action = act.SendString("v\n") },

	-- open git manager 'jesseduffield/lazygit'
	{ key = "g", mods = "CMD", action = act.SendString("\x02g") },
	-- use (cmd+j) to open the session manager popup (t)
	{
		key = "j",
		mods = "CMD",
		action = act.SendString("\x02\x54"),
	},
	-- switch to the last tmux session
	{ key = "l", mods = "CMD", action = act.SendString("\x02L") },
	-- open file manager 'gokcehan/lf'
	{
		key = "o",
		mods = "CMD",
		action = act.SendString("lfcd\n"),
	},
	-- create a new tmux window
	{ key = "t", mods = "CMD", action = act.SendString("\x02c") },
	-- open URL (cmd+u)
	{ key = "u", mods = "CMD", action = act.SendString("\x02u") },
	-- kill the current tmux pane
	{ key = "w", mods = "CMD", action = act.SendString("\x02x") },
}

return config

local wezterm = require("wezterm")
local act = wezterm.action
local key_helper = require("helpers.key_helper")

local M = {}

M.setup = function()
	local keys = {
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

		-- split tmux window vertically
		key_helper.cmd_to_tmux_prefix("e", "%"),
		-- split tmux window horizontally
		key_helper.cmd_to_tmux_prefix("E", '"'),

		-- Rename the current tmux window
		key_helper.cmd_to_tmux_prefix(",", ","),
		-- create a new tmux window
		key_helper.cmd_to_tmux_prefix("t", "c"),
		-- kill the current tmux panel
		key_helper.cmd_to_tmux_prefix("w", "x"),

		-- Control
		key_helper.ctrl_key("E", act.EmitEvent("trigger-vim-with-scrollback")),

		-- open file manager 'sxyazi/yazi'
		key_helper.cmd_key("o", key_helper.multiple_actions("yazi")),
	}

	local tmux_specific_keys = {
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

		-- clear tmux screen
		key_helper.cmd_to_tmux_prefix("d", "C"),
		-- open git manager 'jesseduffield/lazygit'
		key_helper.cmd_to_tmux_prefix("g", "g"),
		-- use (cmd+j) to open the session manager popup (t)
		key_helper.cmd_to_tmux_prefix("j", "T"),
		-- switch to the last tmux session
		key_helper.cmd_to_tmux_prefix("l", "L"),

		-- open URL (cmd+u)
		key_helper.cmd_to_tmux_prefix("u", "u"),
	}

	if os.getenv("TMUX") then
		for _, key in ipairs(tmux_specific_keys) do
			table.insert(keys, key)
		end
	end

	local zellij_keys = {
		-- session manager
		key_helper.cmd_key(
			"j",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "o" }), act.SendKey({ key = "w" }) })
		),
		key_helper.cmd_key(
			"1",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "1" }) })
		),
		key_helper.cmd_key(
			"2",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "2" }) })
		),
		key_helper.cmd_key(
			"3",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "3" }) })
		),
		key_helper.cmd_key(
			"4",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "4" }) })
		),
		key_helper.cmd_key(
			"5",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "5" }) })
		),
		key_helper.cmd_key(
			"6",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "6" }) })
		),
		key_helper.cmd_key(
			"7",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "7" }) })
		),
		key_helper.cmd_key(
			"8",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "8" }) })
		),
		key_helper.cmd_key(
			"9",
			act.Multiple({ act.SendKey({ mods = "CTRL", key = "t" }), act.SendKey({ key = "8" }) })
		),
	}

	for _, key in ipairs(zellij_keys) do
		table.insert(keys, key)
	end

	return keys
end

return M

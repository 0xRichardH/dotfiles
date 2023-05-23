local wezterm = require 'wezterm'
local config = {
  automatically_reload_config = true,
}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- windows
config.color_scheme = 'ayu'
config.window_background_opacity = 0.75
config.hide_tab_bar_if_only_one_tab = true
config.scrollback_lines = 36000
config.window_decorations = "RESIZE"

-- fonts
config.font = wezterm.font_with_fallback({
  { family = "Victor Mono",            weight = "Bold" },
  { family = "Symbols Nerd Font Mono", scale = 0.75 }
})
config.font_size = 17.0
config.line_height = 1.0
config.cell_width = 1.0
config.use_cap_height_to_scale_fallback_fonts = true

return config

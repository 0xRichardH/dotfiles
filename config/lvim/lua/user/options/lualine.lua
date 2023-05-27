-- Lualine has sections as shown below
-- +-------------------------------------------------+
-- | A | B | C                             X | Y | Z |
-- +-------------------------------------------------+

local components = require("lvim.core.lualine.components")
local theme = require("lualine.themes.catppuccin")
theme.normal.c.bg = nil

lvim.builtin.lualine.options.theme = theme

lvim.builtin.lualine.sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {},
  lualine_x = { components.diff, components.diagnostics },
  lualine_y = {},
  lualine_z = {},
}

lvim.builtin.lualine.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}

lvim.builtin.lualine.tabline = {}
lvim.builtin.lualine.extensions = {}

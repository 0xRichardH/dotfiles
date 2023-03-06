-- Lualine has sections as shown below
-- +-------------------------------------------------+
-- | A | B | C                             X | Y | Z |
-- +-------------------------------------------------+

local components = require("lvim.core.lualine.components")
local theme = require("lualine.themes.ayu")
theme.normal.c.bg = nil

lvim.builtin.lualine.options.theme = theme

lvim.builtin.lualine.sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { components.diff },
  lualine_x = {},
  lualine_y = { components.diagnostics, components.lsp },
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

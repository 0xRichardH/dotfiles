local copilot_config = require("user.plugins.copilot")
local copilot_cmp_config = require("user.plugins.copilot-cmp")

lvim.plugins = {
  -- Copilot
  {
    "zbirenbaum/copilot.lua",
    event = { "InsertEnter" },
    config = copilot_config.copilot,
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = copilot_cmp_config.copilot_cmp,
  },

  -- colorscheme
  "Shatur/neovim-ayu",

  -- Zen Mode
  { "folke/zen-mode.nvim" },

  -- Cy[cle]bu[ffer
  "ghillb/cybu.nvim",

  -- lightspeed
  -- jetpack codebase navigation
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  -- vim-surround
  -- mappings to delete, change and add surroundings
  { "tpope/vim-surround" },

  -- 👀 " / @ / CTRL-R
  "junegunn/vim-peekaboo",

  -- Astro supoprt for Neovim
  "wuelnerdotexe/vim-astro",

  -- A minimal typescript-language-server integration plugin
  "jose-elias-alvarez/typescript.nvim",

  -- Minimalistic plugin for Go development in Neovim
  "olexsmir/gopher.nvim",

  -- 🌈 A Neovim plugin to add vscode-style TailwindCSS completion to nvim-cmp
  "roobert/tailwindcss-colorizer-cmp.nvim",
}

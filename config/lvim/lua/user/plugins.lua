lvim.plugins = {
  -- Copilot
  {
    "zbirenbaum/copilot.lua",
    event = { "InsertEnter" },
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
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

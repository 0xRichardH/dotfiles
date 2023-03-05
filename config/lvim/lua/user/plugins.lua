local copilot_config = require("user.plugins.copilot")
local copilot_cmp_config = require("user.plugins.copilot-cmp")
local cybu_config = require("user.plugins.cybu")
local zen_mode_config = require("user.plugins.zen-mode")

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

  -- Remove all background colors to make nvim transparent
  {
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({ enable = true })
    end
  },

  -- Zen Mode
  {
    "folke/zen-mode.nvim",
    config = zen_mode_config.zen_mode
  },

  -- Cy[cle]bu[ffer
  {
    "ghillb/cybu.nvim",
    config = cybu_config.cybu
  },

  -- lightspeed
  -- jetpack codebase navigation
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  -- vim-surround
  -- mappings to delete, change and add surroundings
  { "tpope/vim-surround" },

  -- autoclose and autorename html tag
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- 👀 " / @ / CTRL-R
  "junegunn/vim-peekaboo",

  --  Lf file manager for Neovim (in Lua)
  {
    "lmburns/lf.nvim",
    cmd = "Lf",
    dependencies = { "nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim" },
    opts = {
      winblend = 0,
      highlights = { NormalFloat = { guibg = "NONE" } },
      border = "double", -- border kind: single double shadow curved
      height = 0.70,
      width = 0.85,
      escape_quit = true,
    },
    -- keys = {
    --  { "<leader>ff", "<cmd>Lf<cr>", desc = "NeoTree" },
    -- }
  },

  -- Astro supoprt for Neovim
  "wuelnerdotexe/vim-astro",

  -- A minimal typescript-language-server integration plugin
  "jose-elias-alvarez/typescript.nvim",

  -- Minimalistic plugin for Go development in Neovim
  "olexsmir/gopher.nvim",

  -- 🌈 A Neovim plugin to add vscode-style TailwindCSS completion to nvim-cmp
  "roobert/tailwindcss-colorizer-cmp.nvim",
}

-- local copilot_config = require("user.plugins.copilot")
local cybu_config = require("user.plugins.cybu")
local zen_mode_config = require("user.plugins.zen-mode")
local lsp_signature_config = require("user.plugins.lsp_signature")

lvim.plugins = {
  -- Copilot
  -- {
  --   "zbirenbaum/copilot.lua",
  --   event = { "InsertEnter" },
  --   config = copilot_config.copilot,
  -- },

  -- Codeium
  {
    "Exafunction/codeium.vim",
    config = function()
      vim.keymap.set('i', '<C-a>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    end,
  },

  -- colorscheme
  "Shatur/neovim-ayu",

  -- Remove all background colors to make nvim transparent
  {
    "xiyaowong/nvim-transparent",
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

  --  A GUI library for Neovim plugin developers
  { "ray-x/guihua.lua",  build = "cd lua/fzy && make" },

  -- LSP signature hint as you type
  {
    "ray-x/lsp_signature.nvim",
    config = lsp_signature_config.lsp_signature,
  },

  -- Modern Go dev plugin
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
}

-- disable plugins
lvim.builtin.bufferline.active = false

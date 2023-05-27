-- local copilot_config = require("user.plugins.copilot")
local cybu_config = require "user.plugins.cybu"
local zen_mode_config = require "user.plugins.zen-mode"
local lsp_signature_config = require "user.plugins.lsp_signature"
local go_config = require "user.plugins.go"
local sad_config = require "user.plugins.sad"

lvim.plugins = {
  -- Copilot
  -- {
  --   "zbirenbaum/copilot.lua",
  --   event = { "InsertEnter" },
  --   config = copilot_config.copilot,
  -- },

  -- Codeium
  {
    "jcdickinson/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup {}
    end,
  },

  -- colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true,
      }
    end,
  },

  -- Remove all background colors to make nvim transparent
  {
    "xiyaowong/nvim-transparent",
  },

  -- Zen Mode
  {
    "folke/zen-mode.nvim",
    config = zen_mode_config.zen_mode,
  },

  -- Cy[cle]bu[ffer
  {
    "ghillb/cybu.nvim",
    config = cybu_config.cybu,
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
  { "ray-x/guihua.lua", build = "cd lua/fzy && make" },

  -- LSP signature hint as you type
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
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
    config = go_config.go,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },

  -- A tree like view for symbols in Neovim
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end,
  },

  {
    "ray-x/sad.nvim",
    config = sad_config.sad,
  },

  -- Heuristic buffer auto-close
  {
    "axkirillov/hbac.nvim",
    config = function()
      require("hbac").setup {
        autoclose = true, -- set autoclose to false if you want to close manually
        threshold = 5, -- hbac will start closing unedited buffers once that number is reached
        close_command = function(bufnr)
          vim.api.nvim_buf_delete(bufnr, {})
        end,
        close_buffers_with_windows = false, -- hbac will close buffers with associated windows if this option is `true`
      }
    end,
  },

  -- A markdown preview directly in your neovim.
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
}

-- disable plugins
lvim.builtin.bufferline.active = false
lvim.builtin.alpha.active = false
lvim.builtin.cmp.cmdline.enable = false
lvim.builtin.nvimtree.active = false

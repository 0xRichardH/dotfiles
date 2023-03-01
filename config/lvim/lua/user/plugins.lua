lvim.plugins = {
  "jose-elias-alvarez/typescript.nvim",
  "olexsmir/gopher.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "ghillb/cybu.nvim",

  -- Copilot
  { "zbirenbaum/copilot.lua",
    event = { "InsertEnter" },
  },

  { "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
  },

  -- Zen Mode
  { "folke/zen-mode.nvim" },

  -- vim-surround
  -- mappings to delete, change and add surroundings
  {
    "tpope/vim-surround",

    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },

  -- lightspeed
  -- jetpack codebase navigation
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  -- colorscheme
  { "Shatur/neovim-ayu" },

  -- Astro supoprt for Neovim
  { "wuelnerdotexe/vim-astro" },

  -- 👀 " / @ / CTRL-R
  { "junegunn/vim-peekaboo" },
}

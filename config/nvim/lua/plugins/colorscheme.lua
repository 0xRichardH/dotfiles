return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, or mocha
      transparent_background = true,
    },
  },
  -- {
  --   "xiyaowong/nvim-transparent",
  --   lazy = false,
  --   opts = {
  --     extra_groups = {
  --       "NormalFloat",
  --     },
  --   },
  -- },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      views = {
        mini = {
          win_options = {
            winblend = 0, -- https://github.com/folke/noice.nvim/issues/226
          },
        },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

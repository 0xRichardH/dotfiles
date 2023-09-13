return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, or mocha
      transparent_background = true,
      no_italic = true, -- Force no italic
      no_bold = false, -- Force no bold
    },
  },
  {
    "xiyaowong/nvim-transparent",
    lazy = false,
    opts = {
      groups = {
        "NormalFloat",
      },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = { lsp_doc_border = true }, -- add border https://github.com/LazyVim/LazyVim/issues/173#issuecomment-1457724549
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

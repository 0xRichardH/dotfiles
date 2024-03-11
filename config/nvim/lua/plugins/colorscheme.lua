return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "dawn", -- auto, main, moon, or dawn

        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      })
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = { lsp_doc_border = true }, -- add border https://github.com/LazyVim/LazyVim/issues/173#issuecomment-1457724549
      lsp = {
        progress = { enabled = false },
      },
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
      colorscheme = "rose-pine",
    },
  },
}

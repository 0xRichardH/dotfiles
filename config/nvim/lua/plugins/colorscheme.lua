return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, or mocha
      transparent_background = true,
      color_overrides = {
        all = {
          surface0 = "#444444",
          surface1 = "#666666",
          surface2 = "#a3a7bc",
          surface3 = "#a3a7bc",
        },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        harpoon = true,
        telescope = true,
      },
    },
  },
  { "xiyaowong/nvim-transparent" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

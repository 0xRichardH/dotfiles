return {
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
  keys = {
    { "<leader>o", "<cmd>Lf<cr>", desc = "File Manager" },
  },
}

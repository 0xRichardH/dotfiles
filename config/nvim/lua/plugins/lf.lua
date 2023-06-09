return {
  "0x4richard/lf.nvim",
  lazy = true,
  cmd = "Lf",
  dependencies = { "nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim" },
  opts = {
    default_cmd = "lf",
    winblend = 0,
    highlights = { NormalFloat = { guibg = "NONE" } },
    direction = "float",
    border = "double", -- border kind: single double shadow curved
    height = 0.70,
    width = 0.85,
    escape_quit = true,
    focus_on_open = false, -- focus the current file when opening Lf (experimental)
    mappings = true, -- whether terminal buffer mapping is enabled
    tmux = false, -- tmux statusline can be disabled on opening of Lf
  },
  keys = {
    { "<leader>o", "<cmd>Lf<cr>", desc = "File Manager" },
  },
}

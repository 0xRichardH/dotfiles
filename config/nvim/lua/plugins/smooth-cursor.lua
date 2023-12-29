return {
  "gen740/SmoothCursor.nvim",
  config = function()
    require("smoothcursor").setup({
      cursor = "🍉",
      fancy = {
        enable = false,
        head = { cursor = "🍉" },
      },
    })
  end,
}

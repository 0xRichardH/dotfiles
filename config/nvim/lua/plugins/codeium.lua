return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  keys = function()
    return {
      {
        "<C-a>",
        function()
          return vim.fn["codeium#Accept"]()
        end,
        mode = { "i" },
        expr = true,
      },
      {
        "<C-j>",
        function()
          return vim.fn["codeium#CycleCompletions"](1)
        end,
        mode = { "i" },
        expr = true,
      },
      {
        "<C-k>",
        function()
          return vim.fn["codeium#CycleCompletions"](-1)
        end,
        mode = { "i" },
        expr = true,
      },
      {
        "<C-x>",
        function()
          return vim.fn["codeium#Clear"]()
        end,
        mode = { "i" },
        expr = true,
      },
    }
  end,
}

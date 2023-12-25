return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      filetypes = {
        ["*"] = true,
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-a>",
          dismiss = "<C-x>",
          next = "<C-j>",
          prev = "<C-k>",
        },
      },
      -- panel = { enabled = false },
    })
  end,
  keys = function()
    return {
      {
        "<C-j>",
        function()
          return require("copilot.suggestion").next()
        end,
      },
      {
        "<C-k>",
        function()
          return require("copilot.suggestion").prev()
        end,
        mode = { "i" },
        expr = true,
      },
      {
        "<C-x>",
        function()
          return require("copilot.suggestion").dismiss()
        end,
        mode = { "i" },
        expr = true,
      },
    }
  end,
}

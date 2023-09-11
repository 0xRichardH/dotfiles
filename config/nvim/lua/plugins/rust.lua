return {
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust", "rs" },
    opts = {
      reload_workspace_from_cargo_toml = true,
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "<Leader>k", require("rust-tools").hover_actions.hover_actions, { buffer = bufnr })
        end,
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              autoReload = true,
              features = "all",
              expressionFillDefault = "default",
              checkOnSave = true,
            },
            check = {
              command = "clippy",
              extraArgs = { "--all", "--", "-W", "clippy::all" },
              features = "all",
            },
            typing = {
              autoClosingAngleBrackets = {
                enable = true,
              },
            },
            inlayHints = {
              bindingModeHints = {
                enable = true,
              },
              chainingHints = {
                enable = false,
              },
              closingBraceHints = {
                enable = true,
              },
              closureReturnTypeHints = {
                enable = "always",
              },
              parameterHints = {
                enable = true,
              },
              reborrowHints = {
                enable = "always",
              },
              typeHints = {
                enable = true,
              },
            },
          },
        },
      },
      tools = {
        inlay_hints = {
          -- automatically set inlay hints (type hints)
          -- default: true
          auto = true,

          -- Only show inlay hints for the current line
          only_current_line = false,

          -- whether to show parameter hints with the inlay hints or not
          -- default: true
          show_parameter_hints = true,

          -- prefix for parameter hints
          -- default: "<-"
          parameter_hints_prefix = "<- ",

          -- prefix for all the other hints (type, chaining)
          -- default: "=>"
          other_hints_prefix = "=> ",

          -- whether to align to the length of the longest line in the file
          max_len_align = false,

          -- padding from the left if max_len_align is true
          max_len_align_padding = 1,

          -- whether to align to the extreme right or not
          right_align = false,

          -- padding from the right if right_align is true
          right_align_padding = 7,

          -- The color of the hints
          highlight = "Comment",
        },
        hover_actions = {
          border = {
            { "╭", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╮", "FloatBorder" },
            { "│", "FloatBorder" },
            { "╯", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╰", "FloatBorder" },
            { "│", "FloatBorder" },
          },
          max_width = nil,
          max_height = nil,
          auto_focus = true,
        },
        dap = {
          adapter = {
            type = "executable",
            command = "lldb-vscode",
            name = "rt_lldb",
          },
        },
      },
    },
  },
  {
    "saecki/crates.nvim",
    enabled = true,
    version = "v0.3.0",
    lazy = true,
    ft = { "rust", "toml" },
    event = { "BufRead", "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup({
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
        popup = {
          border = "rounded",
        },
      })
    end,
  },
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruby",
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "rubyfmt",
        "ruby-lsp",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- disable solargraph from auto running when you open ruby files
        solargraph = {
          autostart = false,
        },
        -- ruby_lsp will be automatically installed with mason and loaded with lspconfig
        ruby_lsp = {
          -- Add an on_attach function that disables formatting for ruby files
          on_attach = function(client, bufnr)
            if client.name == "ruby_lsp" then
              -- Disable formatting capability for ruby-lsp
              client.server_capabilities.documentFormattingProvider = false
              client.server_capabilities.documentRangeFormattingProvider = false
            end
          end,
        },
      },
    },
  },
  {
    "tpope/vim-rails",
    ft = { "ruby" },
  },
}

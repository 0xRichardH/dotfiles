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
        ruby_lsp = {},
      },
    },
  },
  {
    "tpope/vim-rails",
    ft = { "ruby" },
  },
}

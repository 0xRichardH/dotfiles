-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "typescript",
  "tsx",
  "css",
  "yaml",
  "go"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- Linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint",
    fileTypes = "typescript, typescriptreact, javascript"
  },

  { name = "golangci_lint", args = { "run", "--fix=false", "--out-format=json", "--path-prefix", "$ROOT" }, filetypes = { "go" } },
}

-- Formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = 'prettier',
    fileTypes = { "typescript", "typescriptreact", "javascript", "css", "html" }
  },

  { name = "gofumpt", filetypes = { "go" } },
}

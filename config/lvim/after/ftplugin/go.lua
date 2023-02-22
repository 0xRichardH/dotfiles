-- formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "gofumpt",   filetypes = { "go" } },
  { name = "goimports", args = { "-srcdir", "$DIRNAME" }, filetypes = { "go" } },
}

-- linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  -- golangci-lint
  { name = "golangci_lint", args = { "run", "--fix=false", "--out-format=json", "--path-prefix", "$ROOT" }, filetypes = { "go" } },
}

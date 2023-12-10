return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "<c-k>", mode = "i", false }
  end,
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            semanticTokens = true,
            hints = {
              parameterNames = true,
              constantValues = true,
              functionTypeParameters = true,
              assignVariableTypes = true,
              compositeLiteralFields = true,
              rangeVariableTypes = true,
            },
          },
        },
      },
    },
    setup = {
      gopls = function()
        -- workaround for gopls not supporting semantictokensprovider
        -- https://github.com/golang/go/issues/54531#issuecomment-1464982242
        require("lazyvim.util").lsp.on_attach(function(client, _)
          if client.name == "gopls" then
            if not client.server_capabilities.semanticTokensProvider then
              local semantic = client.config.capabilities.textDocument.semanticTokens
              client.server_capabilities.semanticTokensProvider = {
                full = true,
                legend = {
                  tokenTypes = semantic.tokenTypes,
                  tokenModifiers = semantic.tokenModifiers,
                },
                range = true,
              }
            end
          end
        end)
        -- end workaround
      end,
    },
  },
}

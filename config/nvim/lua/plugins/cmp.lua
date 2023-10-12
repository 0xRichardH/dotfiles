return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "Exafunction/codeium.nvim" },
      { "hrsh7th/cmp-emoji" },
      { "saecki/crates.nvim" },
    },
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- add boarder to cmp window
      local cmp_window = cmp.config.window
      opts.window = {
        completion = cmp_window.bordered(),
        documentation = cmp_window.bordered(),
      }

      -- Setup supertab in cmp
      -- https://www.lazyvim.org/configuration/recipes#supertab
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            cmp.select_next_item()
          -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
          -- this way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })

      -- add codeium to cmp window
      local default_format_fn = opts.formatting.format
      local sources = opts.sources
      table.insert(sources, 1, { name = "codeium" })
      table.insert(sources, { name = "emoji" })
      table.insert(sources, { name = "crates" })
      opts.sources = cmp.config.sources(sources)
      opts.formatting = {
        format = function(entry, item)
          local icons = require("config.icons").kinds
          item = default_format_fn(entry, item)
          return item
        end,
      }
      vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { fg = "#6CC644" })
    end,
  },
}

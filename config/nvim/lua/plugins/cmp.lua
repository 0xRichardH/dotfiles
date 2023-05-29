return {
  {
    "L3MON4D3/LuaSnip",
    -- Disable default <tab> and <s-tab> behavior in LuaSnip
    keys = function()
      return {}
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "jcdickinson/codeium.nvim" },
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      -- add boarder to cmp window
      local cmp_window = cmp.config.window
      opts.window = {
        completion = cmp_window.bordered(),
        documentation = cmp_window.bordered(),
      }

      -- add codeium to cmp window
      local default_format_fn = opts.formatting.format
      local sources = opts.sources
      table.insert(sources, 1, { name = "codeium" })
      opts.sources = cmp.config.sources(sources)
      opts.formatting = {
        format = function(entry, item)
          local icons = require("config.icons").kinds
          item = default_format_fn(entry, item)
          if entry.source.name == "codeium" then
            item.kind = icons[item.kind] .. " " .. item.kind
          end
          return item
        end,
      }
      vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { fg = "#6CC644" })

      -- Supertab
      local luasnip = require("luasnip")
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
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
    end,
  },
}

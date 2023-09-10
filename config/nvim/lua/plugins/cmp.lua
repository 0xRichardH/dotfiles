return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "0xRichardH/codeium.nvim" },
      { "hrsh7th/cmp-emoji" },
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
      table.insert(sources, { name = "emoji" })
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
    end,
  },
}

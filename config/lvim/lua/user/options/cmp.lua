local default_format = lvim.builtin.cmp.formatting.format

-- Add codeium to builtin cmp
table.insert(lvim.builtin.cmp.sources, { name = "codeium" })
lvim.builtin.cmp.formatting.source_names.codeium = "(Codeium)"
-- https://github.com/LunarVim/LunarVim/pull/3975#issuecomment-1516406354
lvim.builtin.cmp.formatting.format = function(entry, vim_item)
  vim_item = default_format(entry, vim_item)
  if entry.source.name == "codeium" then
    vim_item.kind = ""
    vim_item.kind_hl_group = "CmpItemKindCopilot"
  end
  return vim_item
end

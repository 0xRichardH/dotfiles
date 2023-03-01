local status_ok, copilot_cmp = pcall(require, "copilot_cmp")

if not status_ok then
  return
end

copilot_cmp.setup {
  formatters = {
    insert_text = require("copilot_cmp.format").remove_existing,
    preview = require("copilot_cmp.format").deindent
  },
  method = "getCompletionsCycling",
}

-- Can not be placed into the config method of the plugins.
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

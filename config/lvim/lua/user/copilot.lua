local status_ok, copilot = pcall(require, "copilot")

if not status_ok then
  return
end

copilot.setup {
  plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
  filetypes = {
    ["*"] = true
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<C-a>",
      dismiss = "<C-]>",
      next = "<M-]>",
      prev = "<M-[>",
    },
  },
  panel = { enabled = false },
}

local status_ok, zen_mode = pcall(require, "zen-mode")
if not status_ok then
  return
end

zen_mode.setup {
  window = {
    backdrop = 1,
    height = 0.9,
    width = 80,
    options = {
      signcolumn = "no",
      cursorline = true,
    },
  },
  on_open = function()
    lvim.builtin.cmp.active = false
    lvim.builtin.breadcrumbs.active = false
  end,
  on_close = function()
    lvim.builtin.breadcrumbs.active = true
    lvim.builtin.cmp.active = true
  end,
}

lvim.builtin.which_key.mappings["z"] = {
  "<cmd>ZenMode<CR>:set nospell<CR>", "Zen Mode"
}

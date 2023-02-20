-- neovide
if vim.g.neovide then
  vim.api.nvim_set_option("clipboard", "unnamed")
  vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

  vim.g.neovide_remember_window_size = true
  vim.g.neovide_remember_window_position = true
  vim.g.neovide_input_use_logo = 1
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.opt.title = true
  vim.opt.titlestring = "%<%F"
end

if vim.g.neovide then
  vim.opt.guifont = { "JetBrainsMono Nerd Font", "h13" }

  -- Allow clipboard copy paste in neovim
  vim.g.neovide_input_use_logo = true
  vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
  vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
  vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
  vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
elseif vim.g.vscode then
  -- VSCode extension
  vim.api.nvim_set_keymap('x', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true})
  vim.api.nvim_set_keymap('n', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true})
  vim.api.nvim_set_keymap('o', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true})
  vim.api.nvim_set_keymap('n', 'gcc', '<Plug>VSCodeCommentaryLine', { noremap = false, silent = true})

  --clipboard
  if vim.fn.has("clipboard") then
    if vim.fn.has("unnamedplus") then
      -- When possible use + register for copy-paste
      vim.opt.clipboard = { "unnamed", "unnamedplus" }
    else
      -- On mac and Windows, use * register for copy-paste
      vim.opt.clipboard = { "unnamed" }
    end
  end
else
  vim.opt.runtimepath:prepend('~/.vim')
  vim.opt.runtimepath:append('~/.vim/after')
  vim.g.python3_host_prog = '/usr/local/bin/python3'
  vim.cmd('source ~/.vimrc')
end

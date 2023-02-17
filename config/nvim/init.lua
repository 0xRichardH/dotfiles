if vim.g.neovide then
  vim.opt.guifont = { "JetBrainsMono Nerd Font", "h13" }

  -- Allow clipboard copy paste in neovim
  vim.g.neovide_input_use_logo = true
  vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
  vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
  vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
  vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
else
  vim.opt.runtimepath:prepend('~/.vim')
  vim.opt.runtimepath:append('~/.vim/after')
  vim.g.python3_host_prog = '/usr/local/bin/python3'
  vim.cmd('source ~/.vimrc')
end

--
-- if exists('g:vscode')
--   " VSCode extension
--   xmap gc  <Plug>VSCodeCommentary
--   nmap gc  <Plug>VSCodeCommentary
--   omap gc  <Plug>VSCodeCommentary
--   nmap gcc <Plug>VSCodeCommentaryLine

--   "clipboard
--   if has("clipboard")
--     if has("unnamedplus")
--       " When possible use + register for copy-paste
--       set clipboard=unnamed,unnamedplus
--     else
--       " On mac and Windows, use * register for copy-paste
--       set clipboard=unnamed
--     endif
--   endif
-- elseif exists("g:neovide")
--   set guifont= "JetBrainsMono Nerd Font:h13"

--   let g:neovide_input_use_logo = 1
--   map <D-v> "+p<CR>
--   map! <D-v> <C-R>+
--   tmap <D-v> <C-R>+
--   vmap <D-c> "+y<CR> 
-- else
--   " ordinary Neovim
--   set runtimepath^=~/.vim runtimepath+=~/.vim/after
--   let &packpath = &runtimepath
--   let g:python3_host_prog="/usr/local/bin/python3"
--   source ~/.vimrc
-- endif

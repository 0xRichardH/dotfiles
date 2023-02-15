if exists('g:vscode')
  " VSCode extension
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

  "clipboard
  if has("clipboard")
    if has("unnamedplus")
      " When possible use + register for copy-paste
      set clipboard=unnamed,unnamedplus
    else
      " On mac and Windows, use * register for copy-paste
      set clipboard=unnamed
    endif
  endif
else
  " ordinary Neovim
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  let g:python3_host_prog="/usr/local/bin/python3"
  source ~/.vimrc
endif

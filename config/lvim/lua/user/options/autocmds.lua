-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*tmux.conf" },
  command = "execute 'silent !tmux source <afile> --silent'",
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { ".yabairc" },
  command = "!brew services restart yabai",
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { ".skhdrc" },
  command = "!brew services restart skhd",
})

vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = { "gitmux.conf" },
  callback = function()
    vim.cmd([[set filetype=sh]])
  end,
})

-- mkview
vim.api.nvim_create_autocmd("BufWinLeave", {
  pattern = { "*" },
  command = "silent! mkview",
})

-- loadview
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = { "*" },
  command = "silent! loadview",
})

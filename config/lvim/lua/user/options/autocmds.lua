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

-- mkview and loadview
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

-- Run Telescope find_files on startup
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = { "*" },
  callback = function()
    if vim.bo.filetype ~= "" then
      return
    end

    vim.cmd([[Telescope find_files]])
  end,
})

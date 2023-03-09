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

-- Fonding: makeview & loadview

-- vim.api.nvim_create_autocmd("BufWinLeave", {
--   pattern = { "*" },
--   callback = function()
--     vim.cmd([[mkview]])
--   end,
-- })

-- vim.api.nvim_create_autocmd("BufWinEnter", {
--   pattern = { "*" },
--   callback = function()
--     vim.cmd([[silent loadview]])
--   end,
-- })

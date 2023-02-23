if vim.g.vscode then
  -- VSCode extension
  vim.api.nvim_set_keymap('x', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true })
  vim.api.nvim_set_keymap('n', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true })
  vim.api.nvim_set_keymap('o', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true })
  vim.api.nvim_set_keymap('n', 'gcc', '<Plug>VSCodeCommentaryLine', { noremap = false, silent = true })

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
end

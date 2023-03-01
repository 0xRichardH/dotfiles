-- https://github.com/ghillb/cybu.nvim
--  Neovim plugin that offers context when cycling buffers in the form of a customizable notification window.

vim.keymap.set("n", "<S-TAB>", "<Plug>(CybuPrev)")
vim.keymap.set("n", "<TAB>", "<Plug>(CybuNext)")

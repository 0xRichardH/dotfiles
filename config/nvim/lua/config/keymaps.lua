-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- map enter to ciw
map("n", "<cr>", "ciw", { desc = "ciw" })

-- add keymaps for
map("n", "<leader><space>", "<cmd>CodeActionMenu<cr>", { desc = "CodeActionMenu" })

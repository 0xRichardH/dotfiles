-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local function defaultOptsWithDesc(desc)
  local default_opts = { noremap = true, silent = true }
  default_opts.desc = desc
  return default_opts
end

-- map enter to ciw
map("n", "<cr>", "ciw", defaultOptsWithDesc("ciw"))

-- add keymaps for
map("n", "ga", "<cmd>CodeActionMenu<cr>", defaultOptsWithDesc("CodeAction Menu"))

-- move lines with a pair of keymaps
map("v", "J", ":m '>+1<CR>gv=gv", defaultOptsWithDesc("Move Line Down"))
map("v", "K", ":m '<-2<CR>gv=gv", defaultOptsWithDesc("Move Line Up"))

-- move to start/end of the line
map({ "n", "x", "o" }, "H", "^", defaultOptsWithDesc("Move to Start of Line"))
map({ "n", "x", "o" }, "L", "$", defaultOptsWithDesc("Move to End of Line"))

-- navigate buffers
map("n", "<Right>", ":bnext<CR>", defaultOptsWithDesc("Next Buffer"))
map("n", "<Left>", ":bprevious<CR>", defaultOptsWithDesc("Previous Buffer"))

-- exit insert mode on jj and jk
map("i", "jj", "<ESC>", defaultOptsWithDesc("Exit Insert Mode"))
map("i", "jk", "<ESC>", defaultOptsWithDesc("Exit Insert Mode"))

-- custom keymaps
map("n", "gl", vim.diagnostic.open_float, defaultOptsWithDesc("Show Diagnostics"))

-- tmux navigator
vim.cmd([[
  noremap <silent> <c-h> :<C-U>TmuxNavigateLeft<cr>
  noremap <silent> <c-j> :<C-U>TmuxNavigateDown<cr>
  noremap <silent> <c-k> :<C-U>TmuxNavigateUp<cr>
  noremap <silent> <c-l> :<C-U>TmuxNavigateRight<cr>
  noremap <silent> <c-\> :<C-U>TmuxNavigatePrevious<cr>
]])

-- no-neck-pain -> center current buffer
map("n", "=", "<cmd>NoNeckPain<cr>")

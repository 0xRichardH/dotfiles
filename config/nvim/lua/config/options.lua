-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hereby

-- Vim options
local vimOptions = {
  guifont = "VictorMono Nerd Font:h16", -- set font
  title = true, -- set title of window
  titlestring = "%<%F", -- set title to filename
  number = true, -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  termguicolors = true, -- set term gui colors (most terminals support this)
  cursorline = false, -- highlight cursor line
  fileencoding = "utf-8", -- the encoding written to a file
  undofile = true, -- enable persistent undo
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  pumblend = 0,
}

for k, v in pairs(vimOptions) do
  vim.opt[k] = v
end

-- Vim options: disable ~ on empty lines
vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append({
  stl = " ",
})

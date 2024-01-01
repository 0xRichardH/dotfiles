-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hereby

-- Vim options
local vimOptions = {
  -- guifont = "VictorMono Nerd Font:h17", -- set font
  title = true, -- set title of window
  titlestring = "%<%F", -- set title to filename
  number = true, -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  termguicolors = true, -- set term gui colors (most terminals support this)
  cursorline = true, -- highlight cursor line
  fileencoding = "utf-8", -- the encoding written to a file
  pumblend = 0,
  colorcolumn = "80",
  laststatus = 0, -- disable statusline

  -- search
  hlsearch = true,
  incsearch = true,
  ignorecase = true,

  -- backup
  backup = false,
  swapfile = false,
  undofile = true, -- enable persistent undo
  undodir = os.getenv("HOME") .. "/.vim/undodir",

  -- wrapping
  wrap = false,
  linebreak = false,

  -- spelling
  spell = false,
  spelllang = { "en_us" },

  -- indent
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
}

for k, v in pairs(vimOptions) do
  vim.opt[k] = v
end

-- Vim options: disable ~ on empty lines
vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append({
  stl = " ",
})

-- Add new commands
vim.cmd([[command! -nargs=0 GoToFile :Telescope find_files]])
vim.cmd([[command! -nargs=0 GoToCommand :Telescope commands]])

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "catppuccin"
lvim.use_icons = true
lvim.transparent_window = true
vim.g.italic_comments = true  -- italic comments(Default: true)
vim.g.italic_keywords = true  -- italic keywords(Default: true)
vim.g.italic_functions = true -- italic functions(Default: false)
vim.g.italic_variables = true -- italic variables(Default: false)

lvim.builtin.terminal.active = true
-- lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Vim options
local vimOptions = {
  guifont = "VictorMono Nerd Font:h16", -- set font
  title = true,                         -- set title of window
  titlestring = "%<%F",                 -- set title to filename
  number = true,                        -- set numbered lines
  relativenumber = true,                -- set relative numbered lines
  termguicolors = true,                 -- set term gui colors (most terminals support this)
  cursorline = false,                   -- highlight cursor line
  fileencoding = "utf-8",               -- the encoding written to a file
  undofile = true,                      -- enable persistent undo
  undodir = os.getenv("HOME") .. "/.vim/undodir",
}

for k, v in pairs(vimOptions) do
  vim.opt[k] = v
end

-- Vim options: disable ~ on empty lines
vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append {
  stl = " ",
}


-- Vim custom commands
vim.cmd([[command! -nargs=0 GoToFile :Telescope git_files]])
vim.cmd([[command! -nargs=0 GoToCommand :Telescope commands]])

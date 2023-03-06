-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "ayu-mirage"
lvim.use_icons = true
vim.g.italic_comments = true -- italic comments(Default: true)
vim.g.italic_keywords = true -- italic keywords(Default: true)
vim.g.italic_functions = true -- italic functions(Default: false)
vim.g.italic_variables = true -- italic variables(Default: false)

-- Shorter ASCII art logo, so not too much space is taken up.
lvim.builtin.alpha.dashboard.section.header.val = {
  "▌              ▌ ▌▗",
  "▌  ▌ ▌▛▀▖▝▀▖▙▀▖▚▗▘▄ ▛▚▀▖",
  "▌  ▌ ▌▌ ▌▞▀▌▌  ▝▞ ▐ ▌▐ ▌",
  "▀▀▘▝▀▘▘ ▘▝▀▘▘   ▘ ▀▘▘▝ ▘",
}

lvim.builtin.cmp.cmdline.enable = false
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- lvim.icons

-- Vim options
local vimOptions = {
  guifont = "Hack:h16", -- set font
  title = true, -- set title of window
  titlestring = "%<%F", -- set title to filename
  number = true, -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  termguicolors = true, -- set term gui colors (most terminals support this)
  cursorline = false, -- highlight cursor line
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

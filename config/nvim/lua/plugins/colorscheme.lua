local function get_colorscheme()
  local home = os.getenv("HOME")
  if not home then
    -- FIXME: log error
    return
  end

  local file_path = home .. "/.appearance"
  local file, err = io.open(file_path, "r")
  if not file then
    -- FIXME: log error
    return
  end

  local appearance = file:read("*a")
  file:close()
  if appearance:find("Dark") then
    return "rose-pine-main"
  else
    return "rose-pine-dawn"
  end
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn

        styles = {
          bold = true,
          italic = false,
          transparency = true,
        },
      })
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = { lsp_doc_border = true }, -- add border https://github.com/LazyVim/LazyVim/issues/173#issuecomment-1457724549
      lsp = {
        progress = { enabled = false },
      },
      views = {
        mini = {
          win_options = {
            winblend = 0, -- https://github.com/folke/noice.nvim/issues/226
          },
        },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = get_colorscheme(),
    },
  },
}

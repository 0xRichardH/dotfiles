return {
  -- Heuristic buffer auto-close
  {
    "axkirillov/hbac.nvim",
    config = function()
      require("hbac").setup({
        autoclose = true, -- set autoclose to false if you want to close manually
        threshold = 5, -- hbac will start closing unedited buffers once that number is reached
        close_command = function(bufnr)
          vim.api.nvim_buf_delete(bufnr, {})
        end,
        close_buffers_with_windows = false, -- hbac will close buffers with associated windows if this option is `true`
      })
    end,
  },
  {
    "ghillb/cybu.nvim",
    event = "VeryLazy",
    config = function()
      local ok, cybu = pcall(require, "cybu")
      if not ok then
        return
      end
      cybu.setup({
        position = {
          relative_to = "win", -- win, editor, cursor
          anchor = "topcenter", -- topleft, topcenter, topright,
          -- centerleft, center, centerright,
          -- bottomleft, bottomcenter, bottomright
          -- vertical_offset = 10, -- vertical offset from anchor in lines
          -- horizontal_offset = 0, -- vertical offset from anchor in columns
          -- max_win_height = 5, -- height of cybu window in lines
          -- max_win_width = 0.5, -- integer for absolute in columns
          -- float for relative to win/editor width
        },
        display_time = 1750, -- time the cybu window is displayed
        style = {
          path = "relative", -- absolute, relative, tail (filename only)
          path_abbreviation = "none", -- none, shortened
          border = "rounded", -- single, double, rounded, none
          separator = " ", -- string used as separator
          prefix = "…", -- string used as prefix for truncated paths
          padding = 1, -- left & right padding in number of spaces
          hide_buffer_id = true,
          devicons = {
            enabled = true, -- enable or disable web dev icons
            colored = true, -- enable color for web dev icons
          },
          highlight = {
            current_buffer = "CybuFocus", -- current / selected buffer
            adjacent_buffers = "CybuAdjacent", -- buffers not in focus
            background = "CybuBackground", -- window background
            border = "CybuBorder", -- border of the window
          },
        },
      })
      vim.keymap.set("n", "<S-TAB>", "<Plug>(CybuPrev)")
      vim.keymap.set("n", "<TAB>", "<Plug>(CybuNext)")
    end,
  },
}

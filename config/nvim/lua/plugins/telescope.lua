local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "kkharji/sqlite.lua",
    { "prochri/telescope-all-recent.nvim", opts = {} },
    "danielvolchek/tailiscope.nvim",
    "debugloop/telescope-undo.nvim",
    "natecraddock/telescope-zf-native.nvim",
    "ThePrimeagen/harpoon",
  },
  -- apply the config and additionally load fzf-native
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("notify")
    telescope.load_extension("tailiscope")
    telescope.load_extension("undo")
    telescope.load_extension("zf-native")
    telescope.load_extension("harpoon")
  end,

  opts = {
    defaults = {
      file_ignore_patterns = { ".git/", "node_modules" },
      layout_config = {
        height = 0.90,
        width = 0.90,
        preview_cutoff = 0,
        horizontal = { preview_width = 0.60 },
        vertical = { width = 0.55, height = 0.9, preview_cutoff = 0 },
        prompt_position = "top",
      },
      path_display = { "smart" },
      prompt_position = "top",
      prompt_prefix = " ",
      selection_caret = " ",
      sorting_strategy = "ascending",
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--hidden",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--trim", -- add this value
      },
    },
    pickers = {
      buffers = {
        prompt_prefix = "󰸩 ",
      },
      commands = {
        prompt_prefix = " ",
        layout_config = {
          height = 0.63,
          width = 0.78,
        },
      },
      command_history = {
        prompt_prefix = " ",
        layout_config = {
          height = 0.63,
          width = 0.58,
        },
      },
      git_files = {
        prompt_prefix = "󰊢 ",
        show_untracked = true,
      },
      find_files = {
        prompt_prefix = " ",
        find_command = { "fd", "-H" },
      },
      live_grep = {
        prompt_prefix = "󰱽 ",
      },
      grep_string = {
        prompt_prefix = "󰱽 ",
      },
    },
    extensions = {
      ["zf-native"] = {
        file = { -- options for sorting file-like items
          enable = true, -- override default telescope file sorter
          highlight_results = true, -- highlight matching text in results
          match_filename = true, -- enable zf filename match priority
        },
        generic = { -- options for sorting all other items
          enable = true, -- override default telescope generic item sorter
          highlight_results = true, -- highlight matching text in results
          match_filename = false, -- disable zf filename match priority
        },
      },
    },
  },
  keys = function()
    return {
      { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
      { "<leader>/", Util.telescope("live_grep"), desc = "Grep (root dir)" },
      { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader><space>", Util.telescope("files"), desc = "Find Files (root dir)" },
      { "<leader>*", "<cmd>Telescope grep_string<cr>", { silent = true, desc = "Grep Word Under Cursor" } },
      -- find
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>ff", Util.telescope("files"), desc = "Find Files (root dir)" },
      { "<leader>fF", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
      { "<leader>fR", Util.telescope("oldfiles", { cwd = vim.loop.cwd() }), desc = "Recent (cwd)" },
      -- git
      { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
      { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
      -- search
      { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
      { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
      { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
      { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
      { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
      { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
      { "<leader>sg", Util.telescope("live_grep"), desc = "Grep (root dir)" },
      { "<leader>sG", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
      { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
      { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
      { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
      { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
      { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
      { "<leader>sw", Util.telescope("grep_string", { word_match = "-w" }), desc = "Word (root dir)" },
      { "<leader>sW", Util.telescope("grep_string", { cwd = false, word_match = "-w" }), desc = "Word (cwd)" },
      { "<leader>sw", Util.telescope("grep_string"), mode = "v", desc = "Selection (root dir)" },
      { "<leader>sW", Util.telescope("grep_string", { cwd = false }), mode = "v", desc = "Selection (cwd)" },
      { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
      {
        "<leader>ss",
        Util.telescope("lsp_document_symbols", {
          symbols = {
            "Class",
            "Function",
            "Method",
            "Constructor",
            "Interface",
            "Module",
            "Struct",
            "Trait",
            "Field",
            "Property",
          },
        }),
        desc = "Goto Symbol",
      },
      {
        "<leader>sS",
        Util.telescope("lsp_dynamic_workspace_symbols", {
          symbols = {
            "Class",
            "Function",
            "Method",
            "Constructor",
            "Interface",
            "Module",
            "Struct",
            "Trait",
            "Field",
            "Property",
          },
        }),
        desc = "Goto Symbol (Workspace)",
      },
    }
  end,
}

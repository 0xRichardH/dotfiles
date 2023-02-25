lvim.plugins = {
  "jose-elias-alvarez/typescript.nvim",
  "olexsmir/gopher.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "ghillb/cybu.nvim",

  -- Copilot
  { "zbirenbaum/copilot.lua",
    event = { "InsertEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
          filetypes = {
            ["*"] = true
          },
          suggestion = {
            enabled = true,
            auto_trigger = true,
            keymap = {
              accept = "<C-a>",
              dismiss = "<C-]>",
              next = "<M-]>",
              prev = "<M-[>",
            },
          },
          panel = { enabled = false },
        }
      end, 100)
    end,
  },

  { "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup {
        formatters = {
          insert_text = require("copilot_cmp.format").remove_existing,
          preview = require("copilot_cmp.format").deindent
        },
        method = "getCompletionsCycling",
      }
    end
  },

  -- Zen Mode
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require("zen-mode").setup({
        window = {
          backdrop = 1,
          height = 1, -- height of the Zen window
          width = 1, -- height of the Zen window
          options = {
            signcolumn = "no", -- disable signcolumn
            number = true, -- disable number column
            relativenumber = false, -- disable relative numbers
            cursorline = true, -- disable cursorline
            cursorcolumn = false, -- disable cursor column
            foldcolumn = "0", -- disable fold column
            list = false, -- disable whitespace characters
          },
        },
        plugins = {
          gitsigns = { enabled = false }, -- disables git signs
        },
      })
    end,
  },

  -- vim-surround
  -- mappings to delete, change and add surroundings
  {
    "tpope/vim-surround",

    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },

  -- lightspeed
  -- jetpack codebase navigation
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },

  -- colorscheme
  { "Shatur/neovim-ayu" },

  -- Astro supoprt for Neovim
  { "wuelnerdotexe/vim-astro" },
}

-- Can not be placed into the config method of the plugins.
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

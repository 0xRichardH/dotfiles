-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*tmux.conf" },
  command = "execute 'silent !tmux source <afile> --silent'",
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "config.fish" },
  command = "execute 'silent !source <afile> --silent'",
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { ".yabairc" },
  command = "!yabai --restart-service",
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { ".skhdrc" },
  command = "!skhd --restart-service",
})

vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = { "gitmux.conf" },
  callback = function()
    vim.cmd([[set filetype=sh]])
  end,
})

-- disable copilot for leetcode projects
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*/leetcode/**" },
  callback = function()
    vim.cmd([[Copilot disable]])
  end,
})

-- enable inlay hints globally
-- ref: https://vinnymeller.com/posts/neovim_nightly_inlay_hints/
if vim.lsp.inlay_hint then
  vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
  vim.api.nvim_create_autocmd("LspAttach", {
    group = "LspAttach_inlayhints",
    callback = function(args)
      if not (args.data and args.data.client_id) then
        return
      end

      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if client == nil then
        return
      end

      if client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint.enable(args.buf, true)
      end
    end,
  })
end

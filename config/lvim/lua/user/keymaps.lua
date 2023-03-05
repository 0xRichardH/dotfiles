-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.term_mode = { ["<C-l>"] = false }
lvim.builtin.which_key.mappings["o"] = {
  "<cmd>Lf<CR>", "File Manager"
}

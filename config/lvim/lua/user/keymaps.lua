-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.which_key.mappings["z"] = {
  "<cmd>ZenMode<CR>:set nospell<CR>", "Zen Mode"
}

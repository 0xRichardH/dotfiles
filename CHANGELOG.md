# Changelog
All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.

- - -
## v3.8.0 - 2023-09-22
#### Features
- update git template - (30431d7) - Richard Hao
#### Miscellaneous Chores
- **(github-action)** update git-user info - (e27a225) - Richard Hao

- - -

## v3.7.0 - 2023-09-22
#### Bug Fixes
- **(nvim)** `:update` is being triggered twice - (03ab475) - Richard Hao
- **(nvim)** fix typo - (7eebd11) - Richard Hao
- telescope preview_width should be defined on horizontal table - (4cca63c) - Richard Hao
#### Features
- **(brew)** add `bash` - (ab9426a) - Richard Hao
- **(brew)** add more tools to brewfile - (dd8a282) - Richard Hao
- **(fish)** add cog completion config - (3241cc5) - Richard Hao
- **(nvim)** enable inlay hints globally on the nightly neovim release - (6c05d5a) - Richard Hao
- **(nvim)** use mini-files.nvim to replace `oil.nvim` and `lf.nvim` - (8e72f62) - Richard Hao
- **(nvim)** using yanky to replace neoclip - (5cd591a) - Richard Hao
- **(nvim)** add more telescope keymaps - (263949b) - Richard Hao
- **(nvim)** add shortcut for saving file to disk - (6dd7240) - Richard Hao
- **(nvim)** Use <tab> for completion and snippets (supertab) - (5d05f93) - Richard Hao
- **(nvim)** add border to hover window - (16dbefc) - Richard Hao
- **(nvim)** add dap to rust - (a528eb8) - Richard Hao
- **(nvim)** add crates.nvim to rust tool - (de06d93) - Richard Hao
- **(nvim)** update rust-tools config - (ad16983) - Richard Hao
- **(nvim)** update rust_analyzer config - (81703ba) - Richard Hao
- **(nvim)** update codeium.nvim - (49d8386) - Richard Hao
- **(nvim)** track nvim/lazy-lock.json - (0cfeb78) - Richard Hao
- **(nvim)** update general options - (71ef4d1) - Richard Hao
- **(nvim)** update telescope configs - (386a098) - Richard Hao
- **(nvim)** add no-neck-pain plugin - (f6c92a9) - Richard Hao
- **(nvim)** enable `cargo clippy` checking for rust files - (3f5f7c7) - Richard Hao
- **(nvim)** add keymaps to nvim - (8e73a13) - Richard Hao
- **(nvim)** add keymaps to move to start/end of the line - (e5c8a6b) - Richard Hao
- **(nvim)** add new plugin committia for better display git commmit message - (e85d74a) - Richard Hao
- **(nvim)** add barbecue plugin to display winbar - (4e91983) - Richard Hao
- **(nvim)** add new plugin codewindow for displaying code minimap - (366df14) - Richard Hao
- **(nvim)** add rust-tools.nvim for the rust - (5aaccf3) - Richard Hao
- add karabiner config - (821760f) - Richard Hao
- instal bob-nvim - (783e285) - Richard Hao
- add atuin to manage the command history - (a436c0a) - Richard Hao
- update tmux-nerd-font-window-name and t-smart-tmux-session-manager - (d86a57a) - Richard Hao
- update the Hint diagnostic icon - (384e3c7) - Richard Hao
#### Miscellaneous Chores
- **(fish)** remove plugin sponge - (6caacda) - Richard Hao
- **(fish)** add clear alias cl - (03032a4) - Richard Hao
- **(git)** update email address - (7dd75bf) - Richard Hao
- **(nvim)** update keymaps - (5f36b25) - Richard Hao
- **(nvim)** disable lsp progress bar - (4b0cd71) - Richard Hao
- **(nvim)** remove dap - (98959d7) - Richard Hao
- **(nvim)** using forked lf.nvim - (e1cb1f5) - Richard Hao
- **(nvim)** add configuration for toggleterm plugin - (7a174bb) - Richard Hao
- **(nvim)** add defaultOptsWithDesc helper function for keymaps - (d58bff9) - Richard Hao
- **(nvim)** remove plugin codewindow (mini map) - (82f5592) - Richard Hao
- **(nvim)** bring back nvim-transparent to neovim - (0c87fec) - Richard Hao
- **(nvim)** enable tmux statusline in Lf file manager - (03437fb) - Richard Hao
- **(nvim)**  Remove the `ghillb/cybu.nvim` plugin - (57bf83e) - Richard Hao
- **(nvim)** disable automatically version check for plugins - (cf28bcd) - Richard Hao
- **(nvim)** update inlay hints configs for rust - (a9d0705) - Richard Hao
- **(nvim)** update hover actions for rust - (13304c7) - Richard Hao
- **(nvim)** remove unused code - (c12bc5a) - Richard Hao
- **(tmux)** do not displaoy parent folder on the t_session_name - (3cd4952) - Richard Hao
- **(tmux)** add cargo icon to `tmux-nerd-font-window-name`` - (358b816) - Richard Hao
- **(tmux)** revert to `joshmedeski/t-smart-tmux-session-manager` - (c393026) - Richard Hao
- add `*` to active tmux window name - (cdbe3d3) - Richard Hao
- update configs - (8e4c5dd) - Richard Hao
- update fzf default options - (4664674) - Richard Hao
- update the icons of tmux window name - (da607dd) - Richard Hao
- update the icons of tmux window name - (6dab182) - Richard Hao
- update the handler name to `0xRichardH` - (1700e83) - Richard Hao
- Create LICENSE - (c88194f) - Richard Hao
- change font to comoic mono - (c5d3d9f) - Richard Hao
- increase font size for alacritty - (134a61e) - Richard Hao
- remove invalid file - (eea6e79) - Richard Hao
- add `lazydocker` package to Brewfile for easier Docker management - (32e95df) - Richard Hao
#### Refactoring
- remove event from go.lua plugin file - (85472c0) - Richard Hao

- - -

## v3.6.0 - 2023-06-13
#### Bug Fixes
- **(If)** display hidden file - (04bf2e8) - Richard Hao
- **(nvim)** failed to open lf panel after upgrading - (987a1c6) - Richard Hao
- **(nvim)** cannot open lf after updating the plugin - (e69ea5a) - Richard Hao
#### Documentation
- **(README)** update docs to add Credit section - (9541281) - Richard Hao
- add comments - (2d9af91) - Richard Hao
#### Features
- **(brew)** add gnu-sed to brewfile - (0b64195) - Richard Hao
- **(git)** use neovim as default git editor 🌱 - (fd0c7d6) - Richard Hao
- **(lazyvim)** load lazyvim no matter it is vscode - (6da6213) - Richard Hao
- **(lf)** copy path and filename to clipboard - (7c5cf85) - Richard Hao
- **(nvim)** add colorcolumn to neovim - (ca0498f) - Richard Hao
- **(nvim)** add tmux navigator - (e1b55b5) - Richard Hao
- **(nvim)** add oil.nvim to edit your filesystem like a buffer - (b6434d6) - Richard Hao
- **(nvim)** add wakatime support - (dc3c82a) - Richard Hao
- **(nvim)** add keybindings for moving lines with a pair of keymaps - (ee8a1d8) - Richard Hao
- **(nvim)** add new plugin code-action-menu - (e5455c8) - Richard Hao
- **(nvim)** add SymbolsOutline plugin 🔌 - (e95fce0) - Richard Hao
- **(nvim)** add cmp-emoji - (a9f07cb) - Richard Hao
- **(nvim)** Add telescope-fzf-native - (4425e81) - Richard Hao
- **(nvim)** add plugins for golang development - (48786bc) - Richard Hao
- **(nvim)** add autocmds - (16929c0) - Richard Hao
- **(nvim)** add some plugins - (8b78a26) - Richard Hao
- **(tmux)** capture whole tmux buffer & jump to end - (21e5f2a) - Richard Hao
- update tmux keybindings - (7afc797) - Richard Hao
- add new modules for formatting and linting in LazyVim - (299a077) - Richard Hao
- add alias `vim -> nvim` - (d3af608) - Richard Hao
- add some ui related plugins - (fcb931b) - Richard Hao
#### Miscellaneous Chores
- **(gitmux)** update config - (dff314a) - Richard Hao
- **(lazyvim)** initialize the lazyvim configs - (7e52241) - Richard Hao
- **(lf)** use `lf` rather than `lfcd` - (b604976) - Richard Hao
- **(noice)** make the progress bar transparent - (2832983) - Richard Hao
- **(nvim)** display filename in the lualine - (e542a51) - Richard Hao
- **(nvim)** enhancement - (c77ad36) - Richard Hao
- **(nvim)** add custom keybindings - (a38c410) - Richard Hao
- **(nvim)** map enter to ciw - (a12e62c) - Richard Hao
- **(nvim)** enable cursorline - (ac0a7ae) - Richard Hao
- **(tmux)** make the configs look nicer - (854d25f) - Richard Hao
- **(tmux)** update the config -> terminal-overrides - (746cb7d) - Richard Hao
- **(vim)** udpate plugins - (7ca7ff4) - Richard Hao
- update fish env - (e1ece99) - Richard Hao
- update fish config - (6a63df7) - Richard Hao
- disable supertab in nvim and decrease wezterm background opacity - (93931b9) - Richard Hao
- format wezterm config - (cf7a22f) - Richard Hao
- update - (75fd569) - Richard Hao
- update the looks of LazyVim - (04c8cd5) - Richard Hao
- disable plugins - (afd025c) - Richard Hao
- enable transparent_background - (38f3d3e) - Richard Hao
- change theme to catppuccin-mocha - (464774c) - Richard Hao
#### Refactoring
- **(if)** support to create files and folders - (81c66e8) - Richard Hao
- **(wezterm)** update tmux key bindings - (45c1c1e) - Richard Hao

- - -

## v3.5.0 - 2023-05-24
#### Bug Fixes
- fix typos - (9bf60c8) - Richard Hao
#### Documentation
- **(README)** add section to search fonts - (bacc8c4) - Richard Hao
#### Features
- **(lvim)** add plugin to preview markdown - (9f9d87e) - Richard Hao
- **(wezterm)** migrate keybindings from alacritty - (6bbb523) - Richard Hao
- **(wezterm)** init wezterm configs - (6569e47) - Richard Hao
#### Miscellaneous Chores
- **(lvim)** update gopls inlay config - (7ff1de9) - Richard Hao
- **(lvim)** run `Lazy sync` to sync plugins - (ef6a0d4) - Richard Hao
- **(lvim)** update plugins - (86c350f) - Richard Hao
- **(lvim)** update the config for codeium - (df4ac0d) - Richard Hao
- **(terminal)** add space to gitmux config - (4679ac6) - Richard Hao
- remove sign for gitmux - (38e896a) - Richard Hao
- update vim config- move `disable builtin plugins` to plugin.lua- use If to replace nvimtree - (7aec2ec) - Richard Hao

- - -

## v3.4.0 - 2023-05-22
#### Features
- **(lvim)** add plugin hbac.nvim to autoclose buffers - (b84c78c) - Richard Hao
- **(lvim)** update the neovim plugin codeium - (531c6ef) - Richard Hao
- **(lvim)** enable bufferline - (becb370) - Richard Hao
- **(lvim)** update go.nvim configs - (7dd9b86) - Richard Hao
- **(lvim)** add `err != nil` snippet for golang - (0a87b77) - Richard Hao
- **(lvim)** add keymappings to plugin simrat39/symbols-outline.nvim - (0358414) - Richard Hao
- **(lvim)** add plugin simrat39/symbols-outline.nvim - (2b13b2d) - Richard Hao
- **(lvim)** add plugin ray-x/lsp_signature.nvim - (bf70b78) - Richard Hao
- **(lvim)** add plugin guihua - (31529a6) - Richard Hao
- **(lvim)** add ray-x/go.nvim - (785b910) - Richard Hao
- **(lvim)** add codeium support - (e61ea2b) - Richard Hao
- add neofetch config - (e603669) - Richard Hao
- add bat config - (4849ec8) - Richard Hao
- change the font to Victor Mono - (fb50355) - Richard Hao
- add `sad` plugin to `lvim` configuration - (839d82a) - Richard Hao
#### Miscellaneous Chores
- **(:lvim)** update plugins - (7186e96) - Richard Hao
- **(fish)** remove vi alias - (3398a46) - Richard Hao
- **(gopls)** improve LSP hints and signatures appearance and functionality - (52f7453) - Richard Hao
- **(lvim)** update the options for lvim - (6195880) - Richard Hao
- **(lvim)** update plugins - (05b9ee1) - Richard Hao
- **(lvim)** upgrade lunarvim - (7862bb7) - Richard Hao
- **(lvim)** add default go.nvim config - (a4332a1) - Richard Hao
- update gitmux.conf - (c190aac) - Richard Hao
- update tmux config - (3ca36cd) - Richard Hao
- update the starship configs - (25829a1) - Richard Hao
- update alacritty configs - (7a6511a) - Richard Hao
- remove unused file - (53e758f) - Richard Hao
- remove pomodoro - (d98e0b7) - Richard Hao

- - -

## v3.3.0 - 2023-04-15
#### Bug Fixes
- **(lvim)** to use TransparentEnable instead of enable=true - (f717418) - Richard Hao
#### Features
- **(lvim)** add pg_format - (a5f556d) - Richard Hao
- add lazy-lock.json after upgrade lvim - (5a08957) - Richard Hao
#### Miscellaneous Chores
- **(lvim)** disable bufferline.nvim - (e406020) - Richard Hao
- **(lvim)** add .luarc.json to .gitignore - (6817417) - Richard Hao
- **(lvim)** remove sql-formatter from lsp config - (f3cace2) - Richard Hao
- **(lvim)** remove copilot-cmp plugin - (7f4a8d2) - Richard Hao

- - -

## v3.2.0 - 2023-04-14
#### Features
- **(ci)** add typos action - (252eb2e) - Richard Hao
- **(ci)** add conventional commit check - (2d23c00) - Richard Hao
- **(git)** set rebase as default pull strategy - (2f0bb5d) - Richard Hao

- - -

Changelog generated by [cocogitto](https://github.com/cocogitto/cocogitto).
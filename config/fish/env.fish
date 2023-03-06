set -gx fish_greeting # disable fish greeting
set -gx PNPM_HOME "$HOME/Library/pnpm"

set -Ux EDITOR lvim 
set -U VISUAL lvim
set -U LANG en_US.UTF-8
set -U LC_ALL en_US.UTF-8

set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux FZF_DEFAULT_OPTS "--reverse --no-info --pointer='' --marker='' \
--ansi --color='16,bg+:-1,gutter:-1,prompt:4,pointer:5,marker:6'"
set -Ux FZF_TMUX_OPTS "-p --reverse --no-info --pointer='' --marker='' \
--ansi --color='16,bg+:-1,gutter:-1,prompt:4,pointer:5,marker:6'"
set -Ux FZF_CTRL_R_OPTS "--border-label=' History ' --prompt=' '"

# fzf: disable legacy keybindings
set -U FZF_LEGACY_KEYBINDINGS 0

# ordered by priority - bottom up
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $PNPM_HOME
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.bin
fish_add_path $HOME/.local/bin

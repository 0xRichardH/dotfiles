set -gx fish_greeting # disable fish greeting
set -gx PNPM_HOME "$HOME/Library/pnpm"

set -Ux EDITOR nvim
set -U VISUAL nvim
set -U LANG en_US.UTF-8
set -U LC_ALL en_US.UTF-8

set -U TERM xterm-256color

set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux FZF_DEFAULT_OPTS "\
--exact \
--reverse \
--border rounded \
--no-info \
--pointer=' ' \
--marker=' ' \
--ansi \
--color='16,bg+:-1,gutter:-1,prompt:5,pointer:5,marker:6,border:4,label:4,header:italic'"

set -Ux FZF_TMUX_OPTS "-p 55%,60%"
set -Ux FZF_CTRL_R_OPTS "--border-label=' History ' --prompt=' '"

# set BAT_THEME
set -Ux BAT_THEME Catppuccin-mocha

set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# ordered by priority - bottom up
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $PNPM_HOME
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.bin
fish_add_path $HOME/.local/bin

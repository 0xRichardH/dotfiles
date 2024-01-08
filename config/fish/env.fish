set -gx fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings

set -Ux EDITOR nvim
set -U VISUAL nvim
set -U LANG en_US.UTF-8
set -U LC_ALL en_US.UTF-8

set -Ux SSH_ASKPASS_REQUIRE force

set -U TERM screen-256color

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

# https://github.com/joshmedeski/t-smart-tmux-session-manager
set -Ux T_SESSION_USE_GIT_ROOT true
set -Ux T_SESSION_NAME_INCLUDE_PARENT true

# set BAT_THEME
set -Ux BAT_THEME Catppuccin-mocha

# ordered by priority - bottom up
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.nix-profile/bin
fish_add_path $HOME/.local/share/bob/nvim-bin
fish_add_path $HOME/.bin
fish_add_path $HOME/.local/bin

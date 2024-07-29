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

# use UTF-8 encoding for pgcli
set -Ux PGCLIENTENCODING utf-8

# set global theme (Dark/Light)
set -Ux THEME (cat $HOME/.appearance)

switch $THEME
    case Dark
        set -Ux BAT_THEME gruvbox-dark
    case Light
        set -Ux BAT_THEME gruvbox-light
    case '*'
        # Optionally handle other cases or set a default
        echo "Appearance not set to 'Dark/Light'. Value is: $THEME"
end

# ordered by priority - bottom up
fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.nix-profile/bin
fish_add_path $HOME/.bin
fish_add_path $HOME/.local/bin

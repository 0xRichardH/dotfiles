set -gx fish_greeting # disable fish greeting
set -gx PNPM_HOME "$HOME/Library/pnpm"

set -Ux EDITOR vim 
set -U VISUAL vim
set -U LANG en_US.UTF-8
set -U LC_ALL en_US.UTF-8

# ordered by priority - bottom up
fish_add_path $PNPM_HOME
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.bin
fish_add_path $HOME/.local/bin

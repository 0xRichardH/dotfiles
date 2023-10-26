# set environment variables
source (dirname (status --current-filename))/env.fish
if test -f (dirname (status --current-filename))/env.local.fish
    source (dirname (status --current-filename))/env.local.fish
end

starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'
direnv hook fish | source # direnv allow .

# set abbreviations
source (dirname (status --current-filename))/abbr.fish
# set aliases
source (dirname (status --current-filename))/alias.fish
# set custom keybindings
source (dirname (status --current-filename))/keybindings.fish

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# To do something only in interactive shells
if status is-interactive
    atuin init fish | source # https://atuin.sh/
end

if test -z "$SSH_AGENT_PID"
    eval "$(ssh-agent -c)" >/dev/null
end

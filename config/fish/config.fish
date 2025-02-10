# set environment variables
source (dirname (status --current-filename))/env.fish
if test -f (dirname (status --current-filename))/env.local.fish
    source (dirname (status --current-filename))/env.local.fish
end

starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'
direnv hook fish | source # direnv allow .
pyenv init - | source

# set abbreviations
source (dirname (status --current-filename))/abbr.fish
# set aliases
source (dirname (status --current-filename))/alias.fish
# set custom keybindings
source (dirname (status --current-filename))/keybindings.fish


# asdf
# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

## asdf-golang
source $HOME/.asdf/plugins/golang/set-env.fish
go env -w GOPATH=(asdf where golang)/packages
set -gx GOROOT (go env GOROOT)
set -gx GOPATH (go env GOPATH)

# To do something only in interactive shells
if status is-interactive
    atuin init fish | source # https://atuin.sh/
end

if test -z "$SSH_AGENT_PID"
    eval "$(ssh-agent -c)" >/dev/null
end

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
source $(brew --prefix asdf)/libexec/asdf.fish
source $(brew --prefix asdf)/share/fish/vendor_completions.d/asdf.fish
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

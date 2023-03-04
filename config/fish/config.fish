# set environment variables
source (dirname (status --current-filename))/env.fish

source $(brew --prefix asdf)/libexec/asdf.fish
source $(brew --prefix asdf)/share/fish/vendor_completions.d/asdf.fish

starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'

# set aliases
source (dirname (status --current-filename))/alias.fish

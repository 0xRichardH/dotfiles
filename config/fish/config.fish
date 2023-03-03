# fishshell
starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'

# set environment variables
source (dirname (status --current-filename))/env.fish

# set aliases
source (dirname (status --current-filename))/alias.fish



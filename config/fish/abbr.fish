abbr aap "set -Ux SSH_ASKPASS_REQUIRE force" # add SSH_ASKPASS_REQUIRE environment variable
abbr ai "gh copilot" # Open GitHub Copilot CLI
abbr ais "gh copilot suggest"
abbr aie "gh copilot explain"

abbr ba "bw_add_sshkeys -f ssh-agent -p passphrase"

abbr cd z
abbr c clear
abbr cl clear
abbr claer clear
abbr clera clear
abbr code nvim
abbr cx "chmod +x"

abbr dc "docker compose"
abbr dcp "docker compose -f ~/docker-compose.yaml" # Shorthand, customise docker-compose.yaml location as needed
abbr dprune "docker image prune" # Remove unused images (useful after an upgrade)
abbr dprunesys "docker system prune --all" # Remove unused images, unused networks *and data* (use with care)
abbr dpup docker-compose-up # Update and start a container in background
abbr dps "docker ps --format 'table {{.Names}}\t{{.Status}}'"
abbr dtail "docker logs -tf --tail='50' " # Tail last 50 lines of docker logs

abbr e nvim

abbr gw "git worktree"
abbr gwa "git worktree add"
abbr gwl "git worktree list"
abbr gwd "git worktree remove"
abbr gu git-up

abbr j just

abbr ls 'eza --git --icons --all'
abbr ll 'eza --git --icons --all -l'

abbr mrsk kamal # kamal is former mrsk.

abbr npm pnpm

abbr psql pgcli

abbr r "source ~/.config/fish/config.fish"
abbr rm "rm -i" # Always ask before removing a file
abbr rmap "set -e SSH_ASKPASS_REQUIRE" # remove SSH_ASKPASS_REQUIRE environment variable

abbr sl "ssh-add -l"

abbr tr "tldr --list | fzf --header 'tldr (tealdeer)' --reverse --preview 'tldr {1} --color=always' --preview-window=right,80% | xargs tldr"

abbr v "nvim +GoToFile"
abbr vim nvim

abbr x "chmod +x (ls | gum filter --limit 1 --header 'chmod +x')"


# Ruby
# add bundle exec to common commands
abbr cap "bundle exec cap"
abbr cucumber "bundle exec cucumber"
abbr rails "bundle exec rails"
abbr rake "bundle exec rake"
abbr rspec "bundle exec rspec"
# add aliases for common commands
abbr bi "bundle install"
abbr rs "bundle exec rails server"
abbr rr "bundle exec rails routes"
abbr rc "bundle exec rails console"

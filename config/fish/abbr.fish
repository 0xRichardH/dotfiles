abbr ba "bw_add_sshkeys -f ssh-agent -p passphrase -d"

abbr cd z
abbr c clear
abbr cl clear
abbr claer clear
abbr clera clear
abbr cx "chmod +x"

abbr dps "docker ps --format 'table {{.Names}}\t{{.Status}}'"
abbr dc "docker compose"

abbr gw "git worktree"
abbr gwa "git worktree add"
abbr gwl "git worktree list"
abbr gwd "git worktree remove"

abbr ls 'eza --git --icons --all'
abbr ll 'eza --git --icons --all -l'

abbr mrsk kamal # kamal is former mrsk.

abbr npm pnpm

abbr psql pgcli

abbr qd "nvim --cmd enew --cmd vsplit --cmd enew --cmd \"windo diffthis\" -o 2"

abbr r "source ~/.config/fish/config.fish"

abbr sl "ssh-add -l"

abbr tr "tldr --list | fzf --header 'tldr (tealdeer)' --reverse --preview 'tldr {1} --color=always' --preview-window=right,80% | xargs tldr"

abbr v "nvim +GoToFile"
abbr vim nvim

abbr x "chmod +x (ls | gum filter --limit 1 --header 'chmod +x')"

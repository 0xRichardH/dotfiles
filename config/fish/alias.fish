alias vim lvim
alias vi lvim
alias cat bat
alias ls 'exa --git --icons --color=always --group-directories-first'
alias cd z
alias psql pgcli
alias npm pnpm
alias git hub
alias v 'fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs lvim'
alias mrsk='docker run --rm -it -v $HOME/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock -v {$PWD}/:/workdir  ghcr.io/mrsked/mrsk'

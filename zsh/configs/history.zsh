setopt hist_ignore_all_dups inc_append_history
setopt HIST_VERIFY
HISTFILE=~/.zsh_history
HISTSIZE=-1
SAVEHIST=-1
HIST_NO_DUPS_FILE=true



export ERL_AFLAGS="-kernel shell_history enabled"

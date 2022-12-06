export ZSH=$HOME/.oh-my-zsh

DEFAULT_USER="haoxilu"

plugins=(
  git
  rails
  ruby
  bundler
  docker
  git-flow
  vi-mode
  yarn
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
  history-sync
)

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

export ARCHFLAGS="-arch x86_64"

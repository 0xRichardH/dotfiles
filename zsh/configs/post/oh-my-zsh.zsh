export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_COLOR_SCHEME="light"

DEFAULT_USER="haoxilu"

plugins=(
  git
  rails
  ruby
  bundler
  docker
  git-flow
  osx
  vi-mode
  yarn
  chucknorris
  extract
  zsh-autosuggestions
)

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

export ARCHFLAGS="-arch x86_64"

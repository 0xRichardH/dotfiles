export ZSH=/Users/haoxilu/.oh-my-zsh

ZSH_THEME="robbyrussell"

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
)

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

export ARCHFLAGS="-arch x86_64"

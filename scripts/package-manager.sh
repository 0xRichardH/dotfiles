#!/bin/bash

if test ! $(which brew); then
  echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Installing package manager `rcm`" # https://github.com/thoughtbot/rcm

brew install rcm

env RCRC=$HOME/dotfiles/rcrc rcup


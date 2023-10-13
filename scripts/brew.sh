#!/bin/bash

echo "Brewing all the things"

brew bundle --file=$HOME/dotfiles/Brewfile

if [ "$(uname)" == "Darwin" ]; then
  echo "Running on OSX"  
  brew bundle --file=$HOME/dotfiles/Brewfile-macOS
fi


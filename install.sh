#!/bin/bash

# This script bootstraps my dotfiles on a new machine.

# enable debug mode
set -x

# exit when any command fails
set -e

echo "Installing dotfiles"

dotfiles_path=${HOME}/dotfiles

# shellcheck source=./scripts/package-manager.sh
source "${dotfiles_path}/scripts/package-manager.sh"

# shellcheck source=./scripts/brew.sh
source "${dotfiles_path}/scripts/brew.sh"

# install lunarvim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

# Update dotfiles
rcup

echo "Done."

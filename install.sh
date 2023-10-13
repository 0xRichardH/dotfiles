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

# Update dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup

echo "Done."

#!/bin/bash

# This script bootstraps my dotfiles on a new machine.

# enable debug mode
set -x

# exit when any command fails
set -e

echo "Installing dotfiles"

source ./scripts/package-manager.sh
source ./scripts/brew.sh

echo "Done."

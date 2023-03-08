#!/bin/bash

# This script bootstraps my dotfiles on a new machine.

set -x

echo "Installing dotfiles"

source scripts/package-manager.sh
source scripts/brew.sh

echo "Done."

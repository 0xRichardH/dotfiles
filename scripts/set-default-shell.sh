#!/bin/bash

echo "Set Default Shell to Fish"

sudo bash -c 'echo $(which fish) >> /etc/shells'
chsh -s $(which fish)

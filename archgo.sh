#!/usr/bin/bash

pacman -S --needed - < packages.txt

config_directory="$HOME/.config"
if [ ! -d "$config_directory" ]; then
    mkdir "$config_directory"
    echo "$config_directory was not found, creating $config_directory directory"
fi

stow -t "$config_directory" "config-dotfiles"
stow -t "$HOME" "home-dotfiles"
stow -t "/usr/local/bin" bin

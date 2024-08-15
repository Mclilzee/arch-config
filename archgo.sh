#!/usr/bin/bash

pacman -S --needed - < packages.txt

config_directory="$HOME/.config"
if [ ! -d "$config_directory" ]; then
    mkdir "$config_directory"
    echo "$config_directory was not found, creating $config_directory directory"
fi

stow  "config_dotfiles" -v -t "$config_directory"
stow "home_dotfiles" -v -t "$HOME"
stow bin -v -t "/usr/local/bin"

#!/usr/bin/bash

stow -D "config_dotfiles" -t "$HOME/.config"
stow -D "home_dotfiles" -t "$HOME"
stow -D bin -t "/usr/local/bin"

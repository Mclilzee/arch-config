#!/usr/bin/bash

stow -D -t "$HOME/.config" "config-dotfiles"
stow -D -t "$HOME" "home-dotfiles"
stow -D -t "/usr/local/bin" bin

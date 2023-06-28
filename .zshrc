# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mclilzee/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
neofetch
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias swaylock="swaylock -f -c 000000"
alias savepk="pacman -Qq > ~/.config/packages.txt"
alias cp="cp -v"

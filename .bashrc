#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

neofetch
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias swaylock="swaylock -f -c 000000"
alias savepk="pacman -Qq > ~/.config/packages.txt"
alias cp="cp -v"
PS1='[\u@\h \W]\$ '

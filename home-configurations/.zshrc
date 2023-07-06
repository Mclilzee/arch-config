# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

neofetch

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

setopt correct
setopt correctall

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lock="swaylock -f -c 000000"
alias savepk="pacman -Qttenq > ~/.config/packages.txt"
alias cp="cp -v"

# WSL Only
# alias rootfind="sudo find /bin /boot /dev /etc /home /init /lib /lib64 /lost+found /opt /proc /root /run /sbin /srv /sys /tmp /usr /var"
# if [[ $PWD == "/mnt/c/Arch" ]]; then
#   cd
# fi

autoload -U colors && colors

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Edit line in vim with ctrl-k:
autoload edit-command-line; zle -N edit-command-line
bindkey '^k' edit-command-line

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

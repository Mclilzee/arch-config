# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

neofetch

# Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Global settings
bindkey -e # Set mode to emac
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
# setopt correct
# setopt correctall

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(completion history)
bindkey '\t' autosuggest-accept
bindkey '^[[Z' complete-word

alias lock="swaylock -f -c 000000"
alias savepk="pacman -Qttenq > ~/.config/packages.txt"
alias cp="cp -v"
alias cdf='cd $(fd -H -t d | fzf)'
alias fd="fd -H"
alias ls="lsd"
alias cat="bat"
alias grep="rg"
alias ps="procs"

# WSL Only
# alias wslfind="sudo find /bin /boot /dev /etc /home /init /lib /lib64 /lost+found /opt /proc /root /run /sbin /srv /sys /tmp /usr /var"
# alias rootfind="sudo find / -xdev"
# if [[ $PWD == "/mnt/c/Windows/System32" ]]; then
#   cd
# fi

autoload -U colors && colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Edit line in vim with ctrl-k:
autoload edit-command-line; zle -N edit-command-line
export EDITOR=nvim
bindkey '^k' edit-command-line

# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

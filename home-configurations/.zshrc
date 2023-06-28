# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10/powerlevel10k.zsh-theme
source ~/.config/zsh/autosuggestions/zsh-autosuggestions.zsh

neofetch
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lock="swaylock -f -c 000000"
alias savepk="pacman -Qq > ~/.config/packages.txt"
alias cp="cp -v"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

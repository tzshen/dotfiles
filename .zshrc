export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="tenzo"
plugins=(fzf git z zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
export FZF_DEFAULT_COMMAND='fd --type f'
bindkey \^U backward-kill-line
alias j=z
alias t=trash
alias te=trash-empty
alias tl=trash-list
alias v=vim
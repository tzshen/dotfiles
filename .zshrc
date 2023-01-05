export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="tenzo"
# ZSH_AUTOSUGGEST_MANUAL_REBIND=1
plugins=(fzf git you-should-use z zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
export FZF_DEFAULT_COMMAND='fd --type f'
bindkey \^U backward-kill-line
alias j=z
alias t=trash
alias te=trash-empty
alias tl=trash-list
alias v=vim
alias glodc='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ai) %C(bold blue)<%an> %Cgreen(%ci) %C(bold blue)<%cn>%Creset'\'
alias glodcs='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an> %Cgreen(%cd) %C(bold blue)<%cn>%Creset'\'' --date=short'

# print -Pn "\e]0;\a"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

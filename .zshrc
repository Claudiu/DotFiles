source ~/.antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/
antigen theme evan

antigen bundle coffee
antigen bundle node
antigen bundle npm
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle tarruda/zsh-autosuggestions
antigen bundle git
antigen bundle sublime

alias go='export GOPATH=`pwd`; go'
alias myip="curl 'http://api.ipify.org?format=txt'"

alias ainstall='sudo apt-get install --yes'
alias aupdate='sudo apt-get update'
alias aupgrade='sudo apt-get upgrade --yes'
alias aup='sudo apt-get update; sudo apt-get upgrade --yes'
alias ping='ping -c 5'

# Setup suggestions
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# `cd` + ls
auto-ls () { ls; }
chpwd_functions=( auto-ls $chpwd_functions )

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

# Setup suggestions
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# `cd` + ls
auto-ls () { ls; }
chpwd_functions=( auto-ls $chpwd_functions )

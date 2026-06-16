# Kubernetes

Adding Kubernetes Masterclass for Beginners files, course from Udemy.

Raepo : https://github.com/mischavandenburg

Brew install :
--------------------
kubectl
k9s
tmux
kubectx
--cask kubernetic 


ZshRC add-ons :
--------------------
#kubectl
# CL - 16-06-2026
autoload -Uz compinit
compinit
source <(kubectl completion zsh)

alias k='kubectl'
alias kgp='kubectl get pods'
alias kc='kubectx'
alias kn='kubens'

alias kcs='kubectl config use-context admin@homelab-staging'
alias kcp='kubectl config use-context admin@homelab-production'

.vimrc contents :
--------------------
" Ensure Vim uses filetype plugins
filetype plugin on

" Enable indentation
filetype indent on

" Set the default indentation to 2 spaces for all files
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Enable auto-indentation
set autoindent

" Turn on syntax highlighting
syntax on

" Set backspace so it acts more intuitively
set backspace=indent,eol,start

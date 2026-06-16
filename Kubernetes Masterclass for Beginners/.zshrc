### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/casparlourens/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

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

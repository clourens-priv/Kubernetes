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


Monitoring :
--------------------
A few months ago I nearly missed a disk-full crash at 2am.
Not because I didn't have monitoring. Because I thought I did.

After that, I rebuilt my entire observation setup from scratch, free tools only, no vendor lock-in, no £500/month SaaS dashboards.

Here's the exact stack. Steal it.

──────────────────────────

① Netdata - real-time metrics, zero config.
→ curl https://lnkd.in/eBtNGE_U | bash
Dashboard live instantly at :19999. Genuinely impressive for a free tool.

② Logwatch - daily log digests to your inbox.
→ sudo apt install logwatch
One command. One email. You'll wonder why you didn't do this sooner.

③ Cron + custom script - disk and CPU threshold alerts.
Fires every 15 mins. Hits Slack or email when something looks wrong. Took me 20 minutes to write.

④ UptimeRobot (free tier) - external uptime checks.
5-min polling, email alerts, a public status page. Configured in under 5 minutes. I've been using it for years.

──────────────────────────
💷 Cost: £0
⏱ Setup: ~30 minutes
📊 Coverage: CPU · RAM · Disk · Logs · Uptime
No vendor. No contract.
──────────────────────────

Will this replace Nagios or Zabbix at enterprise scale? No. Should it? Also no.

But if you're running a small team, a client's server, or a side project, this stack will catch problems before your users do. That's usually enough to matter.

I'm always tinkering with this. What are you running? Drop your stack below, especially if you've found something better than Netdata. 👇

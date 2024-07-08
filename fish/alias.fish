# aliases
alias saber="ssh -i /home/dlh/.ssh/id_rsa.pub dlh@192.168.1.20"
alias setproxy='set -gx all_proxy  socks5://127.0.0.1:7890'
alias unproxy='set -e all_proxy'

#Test Proxy
alias pb='ping baidu.com'
alias cy='curl -v youtube.com'

alias of='nautilus .'
alias 1='cd ~'
alias 2='cd ~/Downloads'
alias 3='cd ~/Documents'
# `sudo apt-get install ranger` first
alias re='ranger'

# count all files in the dir , not including dir
alias ca='ls -lR| grep "^-" | wc -l'
# python http servers under curr dir
alias share='python3 -m http.server --bind 0.0.0.0 8443'
alias py="python3"
alias d="trash-put"

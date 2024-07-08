
alias setproxy='export all_proxy="socks5://127.0.0.1:7890"'
alias unproxy='unset all_proxy'

#Test Proxy
alias pb='ping baidu.com'
alias cy='curl -v youtube.com'

alias of='nautilus .'

# `sudo apt-get install ranger` first
alias re='ranger'

# count all files in the dir , not including dir
alias ca='ls -lR| grep "^-" | wc -l'
# python http servers under curr dir
alias share='python3 -m http.server --bind 0.0.0.0 8443'
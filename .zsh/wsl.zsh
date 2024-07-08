# proxy 核对并修改网卡名字
#get ipv4
export getip=$(ip addr show eth0 | awk '/inet / {print $2}' | cut -d '/' -f 1)
export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')

alias setproxy='export all_proxy="socks5://${hostip}:7890";'
alias unproxy='unset all_proxy'

#Test Proxy
alias pb='ping baidu.com'
alias cy='curl -v youtube.com'


alias of='nautilus .'
alias re='ranger
# proxy
#get ipv4 
export getip=$(ip addr show eth0 | awk '/inet / {print $2}' | cut -d '/' -f 1)
export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')

alias setproxy='export all_proxy="socks5://${hostip}:7890";'
alias unproxy='unset all_proxy'

#Test Proxy
alias pb='ping baidu.com'
alias cy='curl -v youtube.com'


alias of='nautilus .'
alias re='ranger'

#tomcat
export CATALINA_HOME=/usr/local/apache-tomcat-9.0.44
export PATH=/usr/local/apache-maven-3.6.3/bin/:$PATH

# count all files in the dir , not including dir
alias ca='ls -lR| grep "^-" | wc -l'
# python http servers
alias share='python3 -m http.server --bind 0.0.0.0 8443'



#default jdk 1.8
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_221
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH


function jdkswitch() {
 echo "dsdsdsdsdsd"
 if ((  $1 == 8 )); then
   echo "We are in function"
   export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_221
 elif (( $1 == 11 )); then
   export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
 elif (( $1 == 17 )); then
   export JAVA_HOME=/usr/lib/jvm/jdk-17.0.7
 else
   echo "Invalid JDK version specified"
   return 1
 fi
 export JRE_HOME=${JAVA_HOME}/jre
 export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
 export PATH=${JAVA_HOME}/bin:$PATH
 echo "Switched JDK to $JAVA_HOME"
}


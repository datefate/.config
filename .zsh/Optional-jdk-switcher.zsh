# Add it to .zshrc first
#default jdk 1.8
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_221
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH

function jdkswitch() {
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

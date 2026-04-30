#!/bin/sh

#  `private key` is located on the client’s machine
#  `public key` can be given to anyone or placed on any server you wish to access.
# step 1 Create SSH Keys `ssh-keygen -t rsa` 
# step 2 Use password to access a server
`ssh-copy-id <remote_host>`
# This will start an SSH session. After you enter your password, it will copy your public key to the server’s authorized keys file, which will allow you to log in without the password next time.


ssh -i /home/<XXX>/.ssh/id_rsa.pub dlh@192.168.1.20


# Disabling Password Authentication
sudo echo "PasswordAuthentication no" >  /etc/ssh/sshd_config
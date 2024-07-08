function iscp
    set -x pubkey "/home/dlh/.ssh/id_rsa.pub"
    set -x serUserName "dlh"
    set -x serIp "192.168.1.20"

    echo "Please ensure you have filled the right info in this script"
    echo "1) upload 2) download:"
    read -l flag
    echo "Enter the path:"
    read -l path
    if test "$flag" = "1"
        upload_ISCP $path
    else if test "$flag" = "2"
        download_ISCP $path
    else
        echo "You input a wrong number"
    end
end

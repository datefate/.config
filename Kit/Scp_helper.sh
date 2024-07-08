#!/bin/bash
# The default directory for both downloads and uploads is ~/Download.
# Note: Change the follow vars:
pubkey="/home/dlh/.ssh/id_rsa.pub"
serUserName="dlh"
serIp="192.168.1.20"

upload() {
    if [ -f "$path" ]; then
        scp -i "$pubkey" "$path" "${serUserName}@${serIp}:/home/${serUserName}/Downloads"
    elif [ -d "$path" ]; then
        scp -i "$pubkey"  -r "$path" "${serUserName}@${serIp}:/home/${serUserName}/Downloads"
    else
        echo "Error:wrong path!!"
    fi
}

download() {
	re=$(check_remote_file)
    if [ "$re"="1" ]; then
        scp -i "$pubkey" -r "${serUserName}@${serIp}:$path" ~/Downloads
    elif [ "$re"="2" ]; then
        scp -i "$pubkey" "${serUserName}@${serIp}:$path" ~/Downloads
    else
        echo "Error: wrong path!!"
    fi
}

check_remote_file() {
    ssh -i "$pubkey" "${serUserName}@${serIp}" "[ -d \"$path\" ]"
    if [ $? -eq 0 ]; then
        return 1;
    fi
    ssh -i "$pubkey" "${serUserName}@${serIp}" "[ -f \"$path\" ]"
    if [ $? -eq 0 ]; then
        return 2;
    else
        return 0
    fi
}

main() {
    echo "Please ensure you have filled the right info in this script"
    echo "1) upload 2) download:"
    read flag
    echo "Enter the path:"
    read path

    if [ "$flag" = "1" ]; then
        upload
    elif [ "$flag" = "2" ]; then
        download
    else
        echo "You inputed a wrong number"
    fi
}

# 调用 main 函数
main "$@"

exit 0

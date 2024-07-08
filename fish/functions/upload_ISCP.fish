function upload_ISCP
    if test -f "$path"
        scp -i "$pubkey" "$path" "$serUserName@$serIp:/home/$serUserName/Downloads"
    else if test -d "$path"
        scp -i "$pubkey" -r "$path" "$serUserName@$serIp:/home/$serUserName/Downloads"
    else
        echo "Error: wrong path!!"
    end
end

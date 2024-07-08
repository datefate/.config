function download_ISCP -a path
    set re (check_remote_file_ISCP $path)
    if test "$re" = "1" 
        scp -i "$pubkey" -r "$serUserName@$serIp:$path" ~/Downloads
    else if test "$re" = "2" 
        scp -i "$pubkey" "$serUserName@$serIp:$path" ~/Downloads
    else
        echo "Error: wrong path!!"
    end
end

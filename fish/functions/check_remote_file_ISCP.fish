function check_remote_file_ISCP -a path
    ssh -i "$pubkey" "$serUserName@$serIp" "test -d \"$path\""
    if test $status -eq 0
	echo 1
        return 0 
    end

    ssh -i "$pubkey" "$serUserName@$serIp" "test -f \"$path\""
    if test $status -eq 0
        echo 2
	return 0
    else
	return 0  
    end
end

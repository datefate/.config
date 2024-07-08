function ranger
    /usr/bin/ranger "$argv"
    if test -f /tmp/ranger_cd
        cd (cat /tmp/ranger_cd)
        rm -f /tmp/ranger_cd
    end
end

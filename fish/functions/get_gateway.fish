function get_gateway
    route -n | grep 'UG[ \t]' | awk '{print $2}'
end

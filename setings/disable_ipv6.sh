#!/bin/bash

# Function to disable IPv6 system-wide
disable_ipv6() {
    GRUB_CONFIG_FILE="/etc/default/grub"
    DISABLE_IPV6_PARAM="ipv6.disable=1"

    # Check if the GRUB configuration file exists
    if [[ ! -f "$GRUB_CONFIG_FILE" ]]; then
        echo "GRUB configuration file not found: $GRUB_CONFIG_FILE"
        exit 1
    fi

    # Check if the ipv6.disable=1 parameter is already present
    if grep -q "$DISABLE_IPV6_PARAM" "$GRUB_CONFIG_FILE"; then
        echo "IPv6 is already disabled in GRUB configuration."
    else
        echo "Disabling IPv6 in GRUB configuration..."
        sudo vi "$GRUB_CONFIG_FILE" <<EOF
:/GRUB_CMDLINE_LINUX
:s/$/ $DISABLE_IPV6_PARAM/
:wq
EOF

        # Update GRUB configuration
        echo "Updating GRUB configuration..."
        sudo update-grub

        # Reboot the system
        echo "Rebooting the system to apply changes..."
        sudo reboot
    fi
}

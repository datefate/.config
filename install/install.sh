#!/bin/bash

 # 指定包含应用程序名称的txt文件路径
 common="./common.txt"
 gui="./desktop.txt"
 server="./services.txt"

# 指定记录安装结果的文件路径
LOG_FILE="install_log.txt"

# 创建记录文件
touch "$LOG_FILE"

# Function to get the package manager based on the distro
get_package_manager() {
    # Check distribution
    if [ -f /etc/os-release ]; then
        # Extract the ID from os-release file
        DISTRO=$(grep -oP '(?<=^ID=).+' /etc/os-release | tr -d '"')
    elif command -v lsb_release &>/dev/null; then
        # Fallback to lsb_release command
        DISTRO=$(lsb_release -si)
    else
        echo "Unable to detect the distribution. Exiting."
        exit 1
    fi

    case "$DISTRO" in
        ubuntu|debian)
            PACKAGE_MANAGER="apt-get"
            ;;
        centos|fedora|rhel)
            PACKAGE_MANAGER="dnf"
            ;;
        openSUSE)
            PACKAGE_MANAGER="zypper"
            ;;
        *)
            echo "Unsupported distribution: $DISTRO. Exiting."
            exit 1
            ;;
    esac
    echo "$PACKAGE_MANAGER"
}

# Function to install applications from a file using the appropriate package manager
install_apps() {
    local file="$1"
    local manager="$2"

    # 检查文件是否存在
    if [[ ! -f "$file" ]]; then
        echo "File not found: $file"
        exit 1
    fi

    # 逐行读取txt文件并安装应用程序
    while IFS= read -r app; do
        # 跳过空行和注释行
        [[ -z "$app" || "$app" =~ ^# ]] && continue
        echo "Installing: $app..."
        if sudo "$manager" install -y "$app"; then
            echo "$app installed successfully." >> "$LOG_FILE"
        else
            echo "Failed to install $app." >> "$LOG_FILE"
        fi
    done < "$file"
}


# main function
main() {
    # Determine the package manager based on the distribution
    PACKAGE_MANAGER=$(get_package_manager)

    
    # Install common applications
    install_apps "$common" "$PACKAGE_MANAGER"

    # Get user input to decide on server or desktop installation
    echo " Common packages installed, chose a additonal packages" 
    echo "1) Server  2) Desktop:"
    read -r flag
    echo "$flag"  # Return the value by echoing it

    if [[ "$flag" == "1" ]]; then
        install_apps "$server" "$PACKAGE_MANAGER"
    elif [[ "$flag" == "2" ]]; then
        install_apps "$gui" "$PACKAGE_MANAGER"
    else
        echo "Invalid option selected. Exiting."
        exit 1
    fi

    echo "Installation completed. Check $LOG_FILE for details."

}

# Call main function
main "$@"

echo "Installation finished, run cat install_log to check, and then rm install_log.txt"

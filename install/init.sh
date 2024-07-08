#!/bin/bash

# 指定包含应用程序名称的txt文件路径
common="apt-common.txt"
gui="apt-gui.txt"
server="apt-services.txt"

# 指定记录安装结果的文件路径
LOG_FILE="install_log.txt"

# 创建记录文件
touch "$LOG_FILE"

# Function to set default editor to vim


APT_installer () {

    local file="$1"

    # 检查文件是否存在
    if [[ ! -f "$file" ]]; then
        echo "File not found: $file"
        exit 1
    fi

    # 逐行读取txt文件并安装应用程序
    while IFS= read -r app; do
        echo "Installing $app..."
        # 跳过空行和注释行
        [[ -z "$app" || "$app" =~ ^# ]] && continue
        echo "Installing: $app"
        if sudo apt-get install -y "$app"; then
            echo "$app installed successfully." >> "$LOG_FILE"
        else
            echo "Failed to install $app." >> "$LOG_FILE"
        fi
    done < "$file"
}

initialize() {
    echo "1).Server 2)desktop:"
    read  flag
    return flag
}

cleanup() {
    rm $LOG_FILE
}

# main 函数
main() {
    APT_installer($common)
    initialize
    if $? == 1 then
        APT_installer($apt-services.txt)
    elif $?==2 then
        APT_installer($gui)
    fi
    echo "Installation completed. Check $LOG_FILE for details."

    cleanup
}


# 调用 main 函数
main "$@"


echo "After the installation finished, run: rm install_log.txt"
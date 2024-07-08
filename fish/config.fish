# For servers haing issues displaying chinese characters.
set -x LANG zh_CN.UTF-8
set -x LC_ALL zh_CN.UTF-8


if status is-interactive
    # Commands to run in interactive sessions can go here
end
source /home/dlh/.config/fish/alias.fish

set CONFIG_FOLDER $HOME/.config/zsh
for file in "$CONFIG_FOLDER"/*.sh
# 使用 `test -f` 或 `[-f` 判断是否是文件
    if test -f $file 
        source "$file"
    end
end

set -g -x RANGER_LOAD_DEFAULT_RC FALSE

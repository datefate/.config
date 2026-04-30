# For servers haing issues displaying chinese characters.
#set -x LANG zh_CN.UTF-8
#set -x LC_ALL zh_CN.UTF-8


if status is-interactive
    # Commands to run in interactive sessions can go here
end
source $HOME/.config/fish/alias.fish
set -g -x RANGER_LOAD_DEFAULT_RC FALSE

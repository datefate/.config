source ./disable_ipv6.sh
source ./set_default_editor_to_vim.sh

mv ./.vimrc ~/.vimrc

# Check current default editor
if [[ "$EDITOR" != "vim" ]] || [[ "$VISUAL" != "vim" ]]; then
set_default_editor_to_vim
else
echo "Default editor is already set to vim."
fi
disable_ipv6
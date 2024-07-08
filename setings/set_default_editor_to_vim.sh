set_default_editor_to_vim() {
    echo "Setting default editor to vim..."
    export EDITOR=vim
    export VISUAL=vim

    # Add these lines to .bashrc if they are not already present
    if ! grep -q 'export EDITOR=vim' ~/.bashrc; then
        echo 'export EDITOR=vim' >> ~/.bashrc
    fi
    if ! grep -q 'export VISUAL=vim' ~/.bashrc; then
        echo 'export VISUAL=vim' >> ~/.bashrc
    fi

    # Reload .bashrc to apply changes
    source ~/.bashrc

    echo "Default editor set to vim."
}
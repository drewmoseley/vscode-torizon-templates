#!/bin/bash

echo "🐚 SETUP XONSH"

# check if the xonsh is on the path if not install it
if command -v xonsh &> /dev/null; then
    echo "xonsh is already installed"
    echo "all ok ✅"
    exit 0
fi

pipx install xonsh
pipx inject xonsh distro
pipx inject xonsh shtab
pipx inject xonsh pyyaml
pipx inject xonsh psutil
pipx inject xonsh torizon-templates-utils
pipx inject xonsh GitPython
pipx inject xonsh xontrib-powerline2
pipx inject xonsh python-lsp-server
pipx inject xonsh pylsp-rope

# add xonsh to the path if not already present
if ! grep -q "export PATH=\$PATH:\$HOME/.local/bin" ~/.bashrc; then
    echo "export PATH=\$PATH:\$HOME/.local/bin" >> ~/.bashrc
fi

# also for .xonshrc itself
if ! grep -q "\$HOME/.local/bin" ~/.xonshrc; then
    echo "\$PATH.insert(0, '$HOME/.local/bin')" >> ~/.xonshrc
fi

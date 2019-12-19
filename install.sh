#!/usr/bin/env bash

# Install xcode dev tools
xcode-select --install

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

source ./nvm.sh

# Install apps and binaries with Brew
source ./brew.sh

# Install global binaries
source ./npm.sh

# Configure VS Code.
source ./vscode

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos

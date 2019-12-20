#!/usr/bin/env bash

# Install xcode dev tools
xcode-select --install

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup zsh plugins (relies on Oh My ZSH)
source ./zshplugins.sh

# Install node version manager
source ./nvm.sh

# Install required fonts for terminals
source ./fonts.sh

# Install apps and binaries with Brew
source ./brew.sh

# Configure VS Code.
source ./vscode.sh

# Link all these dotfiles to your home folder. Note there is brute force involved.
source ./link.sh

# Install Node LTS and global binaries
source ./npm.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos.sh
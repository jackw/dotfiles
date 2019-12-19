#!/usr/bin/env bash

# Link settings.json
mkdir -p "$HOME/Library/Application Support/Code/User/"
ln -sfn $(pwd)/vscodeFiles/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

# Install wanted extensions
cat vscodeFiles/extensions | xargs -L 1 echo code --install-extension

#TODO: get animals of paradise without copying from elsewhere.
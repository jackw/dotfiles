# Link settings.json
mkdir -p "$HOME/Library/Application Support/Code/User/"
ln -s settings.json "$HOME/Library/Application Support/Code/User/settings.json"

# Install wanted extensions
code --list-extensions | xargs -L 1 echo code --install-extension

#TODO: get animals of paradise without copying from elsewhere.
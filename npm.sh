# Install versions of node
nvm install node # latest
nvm install --lts # latest stable
nvm install lts/dubnium # node 10

# Default commitizen to use conventional changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc

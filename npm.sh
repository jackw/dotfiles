# Install LTS
nvm install --lts

# Install commonly used clis
npm i -g commitizen
npm i -g cz-conventional-changelog
npm i -g http-server
npm i -g elfinder
npm i -g svgo

# Let's drop node 10 here also and make sure the global packages are available
nvm install lts/dubnium --reinstall-packages-from=node

# Default commitizen to use conventional changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc

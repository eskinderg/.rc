#NVM SETUP node version manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
sudo chown -R $(whoami) ~/.npm
sudo chown -R $(whoami) /usr/local/lib/node_modules
npm config set prefix ~/.npm

#npm install -g vimls 
npm install -g vim-language-server
npm install -g jsonls 
npm install -g vscode-css-languageserver-bin
npm install -g vscode-langservers-extracted
npm install -g bash-language-server
npm install -g npm-check-updates
npm install -g yaml-language-server
npm install -g typescript typescript-language-server eslint prettier
npm install -g vscode-html-languageservice

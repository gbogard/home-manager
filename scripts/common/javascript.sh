#!/bin/bash

echo "Installing nvm"

if command -v curl &> /dev/null
then
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
elif command -v wget &> /dev/null 
then
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
else
  echo "You need to install curl or wget in order to install nvm"
  exit
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install 18
nvm alias default 18
npm install -g yarn

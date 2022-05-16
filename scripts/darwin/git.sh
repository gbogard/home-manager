#!/bin/bash

echo Installing git 
brew install git

SSH_KEY=$HOME/.ssh/id_ed25519
if [[ ! -f $SSH_KEY ]]
then
	echo "Generating a new SSH key"
	mkdir -p $HOME/.ssh
	ssh-keygen -t ed25519 -a 100 -f $SSH_KEY -q -N ""
	ssh-add $SSH_KEY
fi


echo "Installing Delta"
brew install git-delta

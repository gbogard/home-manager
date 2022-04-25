#!/bin/bash

echo Installing git 
sudo apt install -y git curl

SSH_KEY=$HOME/.ssh/id_ed25519
if [[ ! -f $SSH_KEY ]]
then
	echo "Generating a new SSH key"
	mkdir -p $HOME/.ssh
	ssh-keygen -t ed25519 -a 100 -f $SSH_KEY -q -N ""
	ssh-add $SSH_KEY
fi


echo "Installing Delta"
DELTA=$(mktemp)
curl https://github.com/dandavison/delta/releases/download/0.12.1/git-delta_0.12.1_amd64.deb \
	-LJ --output $DELTA

sudo dpkg -i $DELTA
rm $DELTA

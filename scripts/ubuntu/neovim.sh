#!/bin/bash

echo Installing Neovim
sudo apt install -y snapd fzf universal-ctags
sudo snap install --edge nvim --classic

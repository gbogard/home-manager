#!/bin/bash

CONFIG_DIR=$CONFIG_FILES_DIR/neovim
echo Linking Neovim config from $CONFIG_DIR
mkdir -p $HOME/.config
ln -sf $CONFIG_DIR $HOME/.config/nvim



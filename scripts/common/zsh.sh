#!/bin/bash

# install Oh my ZSH
echo Installing Oh my ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CONFIG_FILE=$CONFIG_FILES_DIR/.zshrc
echo Linking Oh my ZSH config from $CONFIG_FILE
ln -sf $CONFIG_FILE $HOME/.zshrc

# install Zsh autosuggestions
echo Installing ZSH Autosuggestions;
git clone https://github.com/zsh-users/zsh-autosuggestions \
      ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &> /dev/null || true


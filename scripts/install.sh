#!/bin/bash

export SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
if [[ $OSTYPE == 'darwin'* ]]; then
  export OS=darwin
else
  export OS=ubuntu
fi
export CONFIG_FILES_DIR=$SCRIPT_DIR/../config_files
export OS_SCRIPTS_DIR=$SCRIPT_DIR/$OS
export COMMON_SCRIPTS_DIR=$SCRIPT_DIR/common

echo "================================================================================="
echo "                            Home management scripts                              "
echo
echo Detected OS is $OS
echo Scripts folder: $SCRIPT_DIR
echo Config files folder: $CONFIG_FILES_DIR
echo "================================================================================="
echo

if [[ $OS = "darwin" ]]; then
  read -p "You are running Darwin. Would you like to install Homebrew ? (Reply with Y/y)" -n 1 -r
  echo    
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

read -p "Would you like to configure ZSH ? (Reply with Y/y)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  $OS_SCRIPTS_DIR/zsh.sh
  $COMMON_SCRIPTS_DIR/zsh.sh
fi

read -p "Would you like to install Neovim ? (Reply with Y/y)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  $OS_SCRIPTS_DIR/neovim.sh
  $COMMON_SCRIPTS_DIR/neovim.sh
fi

read -p "Would you like to install and configure Git ? (Reply with Y/y)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  $OS_SCRIPTS_DIR/git.sh
  $COMMON_SCRIPTS_DIR/git.sh
fi

read -p "Would you like to install Java and Scala ? (Reply with Y/y)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  $COMMON_SCRIPTS_DIR/scala.sh
fi

read -p "Would you like to install Ghcup ? (Reply with Y/y)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo Installing ghcup
  curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi

read -p "Would you like to install and configure node.js ? (Reply with Y/y)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  $COMMON_SCRIPTS_DIR/javascript.sh
fi

read -p "Would you like to install and configure Rust ? (Reply with Y/y)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
  $COMMON_SCRIPTS_DIR/rust.sh
fi

echo "Done."
echo "Have a nice day!"

#!/bin/bash
echo "Installing Beets"
pip3 install beets beets[fetchart,lyrics,lastgenre,convert,embedart]

echo "Linking Beets configuration"

CONFIG_FILE=$CONFIG_FILES_DIR/beets.yaml
ln -sf $CONFIG_FILE $HOME/beets.yaml
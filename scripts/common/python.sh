#!/bin/sh

curl https://pyenv.run | bash

$HOME/.pyenv/bin/pyenv install 3.10.6
$HOME/.pyenv/bin/pyenv global 3.10.6

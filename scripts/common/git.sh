#!/bin/bash
echo "Enter user Git user name (git config --global user.name)"
read user
echo
echo "Enter user Git e-mail (git config --global user.email)"
read email
git config --global user.name $user
git config --global user.email $email

echo "Git has been configured with user $user <$email>"

git config --global core.pager delta
git config --global delta.diffFilter "delta --color-only"
git config --global delta.navigate "true"
git config --global merge.conflictstyle "diff3"
git config --global diff.colorMoved "default"


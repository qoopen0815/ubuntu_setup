#!/bin/bash
pwd_dir=$(pwd)

git clone http://github.com/calm0815/dotfiles.git
mv ./dotfiles ~/

ln -s ~/dotfiles/.inputrc ~/
source ${pwd_dir}/nocaps.sh
source ${pwd_dir}/emacs.sh
source ${pwd_dir}/vim.sh

#!/bin/bash
pwd_dir=$(pwd)

git clone http://github.com/calm0815/dotfiles.git
mv ./dotfiles ~/

ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.inputrc ~/
ln -s ~/dotfiles/.latexmk ~/
ln -s ~/dotfiles/.tmux.conf ~/

source ${pwd_dir}/Setting/nocaps.sh
source ${pwd_dir}/Setting/emacs.sh
source ${pwd_dir}/Setting/vim.sh

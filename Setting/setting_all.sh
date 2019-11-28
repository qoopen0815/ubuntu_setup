#!/bin/bash
pwd_dir=$(pwd)

# DIR name translate to English
LANG=C xdg-user-dirs-gtk-update

git clone http://github.com/calm0815/dotfiles.git
mv ./dotfiles ~/

# ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.inputrc ~/
ln -s ~/dotfiles/.latexmkrc ~/
# ln -s ~/dotfiles/.tmux.conf ~/

sh ${pwd_dir}/Setting/nocaps.sh
sh ${pwd_dir}/Setting/emacs.sh
sh ${pwd_dir}/Setting/vim.sh

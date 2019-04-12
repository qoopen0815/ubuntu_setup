#!/bin/bash
pwd_dir=$(pwd)

# Setup
mkdir -p ~/dotfiles/.vim/bundle
ln -s ~/dotfiles/.vim ~/

if [ ! -e ~/dotfiles/.vim/bundle/vundle ];
then
  git clone https://github.com/gmarik/vundle.git ~/dotfiles/.vim/bundle/vundle
fi

vi -c PluginInstall -c qa
${pwd_dir}/install_vimycm.sh
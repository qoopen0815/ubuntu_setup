#!/bin/bash
pwd_dir=$(pwd)

# Install
sudo apt-add-repository -y ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim-gnome && sudo apt -y remove vim-tiny
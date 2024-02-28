#!/bin/bash

pwd_dir=$(pwd)

# Install Git
sudo apt-get install -yV git

# git settings
git config --global user.name "qoopen0815"
git config --global user.email "ku_fairlady_wa@outlook.com"
git config --global color.ui auto
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

# Install Github Desktop
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
sudo apt update && sudo apt install github-desktop

#!/bin/bash

root_pwd_dir=$(pwd)

# update package and firmware
initial_update_package()
{
    sudo apt update
    sudo apt upgrade -yV
    sudo apt dist-upgrade -yV
    cd ${root_pwd_dir}
}

# install apt-get package
apt_install()
{
    sudo apt install -yV build-essential
    sudo apt install -yV clang
    sudo apt install -yV cmake
    sudo apt install -yV llvm
    # sudo apt install -yV python-dev python3-pip
    # sudo apt install -yV python-flake8
    # sudo apt install -yV python3-dev
    # sudo apt install -yV python-pip
    # sudo apt install -yV python3-pip
    # sudo apt install -yV rxvt-unicode-256color
    # sudo apt install -yV tmux
    sudo apt install -yV terminator
    # sudo apt install -yV xsel
    sudo apt install -yV texlive-full
    sudo apt install -yV latexmk
    # sudo apt install -yV emacs
    sudo apt install -yV curl
    cd ${root_pwd_dir}
}

initial_update_package
apt_install

sh ./Git/Git_installer.sh
## sh ./Vim/Vim_installer.sh
sh ./VScode/vscode_installer.sh
sh ./ROS/ROS_installer.sh
sh ./Chrome/Chrome_installer.sh
sh ./Nvidia/driver_GTX1060.sh

sh ./Setting/setting_all.sh

#!/bin/bash

root_pwd_dir=$(pwd)

install_build_pkgs()
{
    sudo apt install -yV build-essential
    sudo apt install -yV clang
    sudo apt install -yV cmake
    sudo apt install -yV llvm
}

install_apt_pkgs()
{
    sudo apt install -yV curl
    sudo apt install -yV tmux
    sudo apt install -yV terminator
    sudo apt install -yV vim
    # sudo apt install -yV texlive-full
    # sudo apt install -yV latexmk
}

install_python()
{
    sudo apt install -yV python3-pip
    sudo apt install -yV python3-venv
    sudo pip3 install --upgrade pip
    pip3 install --user jupyter
}

setting()
{
    # Resolve time discrepancy with Windows
    sudo hwclock -D --systohc --localtime
    # Capslock -> Ctrl
    gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"
}


# Update and upgrade apt packages
sudo apt update
sudo apt upgrade -yV
sudo apt dist-upgrade -yV

install_build_pkgs
install_apt_pkgs
install_python

source ./Git/install_git.sh
source ./Docker/install_docker.sh
source ./VSCode/install_vscode.sh
# source ./ROS/install_ros.sh

setting

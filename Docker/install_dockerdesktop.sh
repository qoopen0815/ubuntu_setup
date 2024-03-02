#!/bin/bash

root_pwd_dir=$(pwd)

# Install Docker Desktop
sudo apt-get update
sudo apt install gnome-terminal
wget -P $HOME/Downloads https://desktop.docker.com/linux/main/amd64/139021/docker-desktop-4.28.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64&_gl=1*4ftdl6*_ga*MTgxNDYwMTE1OC4xNzA5MDQxNDEy*_ga_XJWPQMJYHQ*MTcwOTA5OTA4OS40LjEuMTcwOTEwMDgzNi41OC4wLjA.
sudo apt -y install $HOME/Downloads/docker-desktop-*.deb
systemctl --user start docker-desktop
systemctl --user enable docker-desktop

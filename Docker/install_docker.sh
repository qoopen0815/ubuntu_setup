#!/bin/bash

root_pwd_dir=$(pwd)

# Remove old version
sudo apt remove docker docker-engine docker.io containerd runc docker-ce docker-ce-cli
rm -r $HOME/.docker/desktop

# Install Docker
sudo apt update
sudo apt -y install ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Check
sudo docker run hello-world

# Add 'docker' to user group
sudo systemctl unmask docker.service
sudo systemctl enable docker
sudo systemctl is-enabled docker

# Install Docker Desktop
sudo apt-get update
sudo apt install gnome-terminal
wget -P $HOME/Downloads https://desktop.docker.com/linux/main/amd64/139021/docker-desktop-4.28.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64&_gl=1*4ftdl6*_ga*MTgxNDYwMTE1OC4xNzA5MDQxNDEy*_ga_XJWPQMJYHQ*MTcwOTA5OTA4OS40LjEuMTcwOTEwMDgzNi41OC4wLjA.
sudo apt -y install $HOME/Downloads/docker-desktop-*.deb
systemctl --user start docker-desktop
systemctl --user enable docker-desktop

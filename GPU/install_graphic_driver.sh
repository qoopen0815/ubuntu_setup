#!/bin/bash

root_pwd_dir=$(pwd)

sudo apt update && sudo apt upgrade -y
sudo ubuntu-drivers autoinstall
sudo apt install nvidia-cuda-toolkit -y

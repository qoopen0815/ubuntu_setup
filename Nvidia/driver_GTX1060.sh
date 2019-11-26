#!/bin/bash
pwd_dir=$(pwd)

sudo apt update && sudo apt upgrade -y
sudo ubuntu-drivers autoinstall

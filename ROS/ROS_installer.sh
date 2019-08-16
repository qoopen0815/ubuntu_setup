#!/bin/bash

pwd_dir=$(pwd)

Version="dashing"

if [ "$2" = "--auto" ]; then
	auto_flg=1
else
	auto_flg=0
fi

echo "
    ██████╗  ██████╗ ███████╗      
    ██╔══██╗██╔═══██╗██╔════╝      
    ██████╔╝██║   ██║███████╗      
    ██╔══██╗██║   ██║╚════██║      
    ██║  ██║╚██████╔╝███████║      
    ╚═╝  ╚═╝ ╚═════╝ ╚══════╝      
                                                                          
    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
    ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝"

pre_version=$(ls /opt/ros/ > /dev/null)

if [ -n "$pre_version" ]; then
	echo "Yor already have ROS : "${pre_version}
	echo ""
	if [ ${auto_flg} -eq 0 ]; then
		printf "Continue to install ? (yes/no) : "
		read -r response
		if [ ${response} = "y" -o ${response} = "yes" ];then
			echo "OK. Continue to install."
		else
			echo "OK. Stoop to install."
			cd ${pwd_dir}
			return 0
		fi
	fi
else
	echo "There is no ROS environment ... Install it."
fi

# 引数によるバージョン確認
if [ -e $1 ]; then
	echo "Install : ROS "${Version}" (Default)"
else
	echo "Install : ROS "$1
	Version=$1
fi

if [ ${auto_flg} -eq 0 ]; then
	printf "Ready to Install. Start ? (yes/no) : "
	read -r start_flg
	if [ ${start_flg} != "y" -a ${start_flg} != "yes" ]; then
		echo "OK. Stop to install."
		cd ${pwd_dir}
		return 0
	fi
fi

# setup locale
sudo locale-gen ja_JP ja_JP.UTF-8
sudo update-locale LC_ALL=ja_JP.UTF-8 LANG=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

# setting apt source lists
sudo apt update
sudo apt install curl gnupg2 lsb-release
curl http://repo.ros2.org/repos.key | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt update

# install ROS2 packages
sudo apt install ros-${Version}-desktop python3-colcon-common-extensions python3-rosdep python3-argcomplete
sudo rosdep init
rosdep update

# setting environment
echo "source /opt/ros/dashing/setup.bash" >> ~/.bashrc

if ! less ~/.bashrc | grep "/opt/ros/${Version}/setup.bash" > /dev/null; then
	echo "source /opt/ros/${Version}/setup.bash" >> ~/.bashrc
fi
source ~/.bashrc

echo "ROS Installer Finished !!"
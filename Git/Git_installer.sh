#!/bin/bash
pwd_dir=$(pwd)

if [ "$2" = "--auto" ]; then
	auto_flg=1
else
	auto_flg=0
fi

echo "
	 ██████╗ ██╗████████╗                                                     
	██╔════╝ ██║╚══██╔══╝                                                     
	██║  ███╗██║    ██║                                                        
	██║   ██║██║    ██║                                                        
	╚██████╔╝██║   ██║                                                        
	 ╚═════╝ ╚═╝   ╚═╝                                                        
                                                                          
    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
    ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
    ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝"

sudo apt-get install git -yV

# git settings
git config --global user.name "calm0815"
git config --global user.email "calm0815@example.com"
git config --global color.ui auto
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
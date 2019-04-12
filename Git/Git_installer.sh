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
git config --global user.email "ku_skyline_wa@yahoo.co.jp"
git config --global core.editor 'vim -c "set fenc=utf-8"'
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
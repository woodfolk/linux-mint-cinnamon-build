#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-icons-sardi-extra-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 03, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing sardi extra..."
echo -e "------------------------------------------------------------------"

# cleaning tmp
[ -d /tmp/Sardi-Extra ] && rm -rf /tmp/Sardi-Extra

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

# git

# check if conky is installed
if ! location="$(type -p "git")" || [ -z "git" ]; then

	echo -e "----------------------------------------------------------------"
	echo -e "installing git for this script to work"
	echo -e "----------------------------------------------------------------"
		sudo apt-get install -y git
else
	echo -e "------------------------------------------------------------------"
	echo -e "Git was installed. Proceeding..."
	echo -e "------------------------------------------------------------------"
fi

git clone https://github.com/erikdubois/Sardi-Extra /tmp/Sardi-Extra
find /tmp/Sardi-Extra -maxdepth 1 -type f -exec rm -rf '{}' \;

cp -rf /tmp/Sardi-Extra/* ~/.icons/

# cleaning tmp
[ -d /tmp/Sardi-Extra ] && rm -rf /tmp/Sardi-Extra


echo -e "------------------------------------------------------------------"
echo -e "|                    Sardi extra installed                        |"
echo -e "------------------------------------------------------------------"

#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-icons-sardi-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 03, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1  #
# “Tessa” Cinnamon Edition an ubuntu based distributions.#
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing sardi..."
echo -e "------------------------------------------------------------------"


# cleaning tmp
[ -d /tmp/sardi ] && rm -rf /tmp/sardi

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

wget -O /tmp/sardi.tar.gz "https://sourceforge.net/projects/sardi/files/latest/download?source=files"
mkdir /tmp/sardi
tar -zxf /tmp/sardi.tar.gz -C /tmp/sardi
rm /tmp/sardi.tar.gz
cp -rf /tmp/sardi/* ~/.icons/

# cleaning tmp
[ -d /tmp/sardi ] && rm -rf /tmp/sardi

echo -e "------------------------------------------------------------------"
echo -e "|                      sardi icons installed                     |"
echo -e "------------------------------------------------------------------"

#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-icons-surfn-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e "------------------------------------------------------------------"
echo -e " Creating Log files..."
echo -e "------------------------------------------------------------------"
# Defining Script Variables 
	SCRPTNAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")" 
	SCRPTNOW=`date +%Y%m%d%H%M%S`													# Current Date & Time Suffix
	SCRPTLOGFILE="$SCRPTNAME"_instlog_"$SCRPTNOW".log						# Script Log File
	SCRPTERRORFILE="$SCRPTNAME"_errlog_"$SCRPTNOW".log						# Error Log File
# Creating Log Files
	touch $SCRPTERRORFILE
	exec 2> $SCRPTERRORFILE
echo -e "------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "------------------------------------------------------------------"


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing surfn icons..."
echo -e "------------------------------------------------------------------"

# cleaning tmp
[ -d /tmp/Surfn ] && rm -rf /tmp/Surfn

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

# git

# check if conky is installed
if ! location="$(type -p "git")" || [ -z "git" ]; then
		
	echo -e "----------------------------------------------------------------"
	echo -e " Installing git for this script to work"
	echo -e "----------------------------------------------------------------"

	sudo apt-get install -y git

else
	echo -e "------------------------------------------------------------------"
	echo -e "Git is installed. Proceeding..."
	echo -e "------------------------------------------------------------------"
fi


git clone https://github.com/erikdubois/Surfn /tmp/Surfn
find /tmp/Surfn -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -rf /tmp/Surfn/* ~/.icons/

# cleaning tmp
[ -d /tmp/Surfn ] && rm -rf /tmp/Surfn


echo -e "------------------------------------------------------------------"
echo -e "|                      icons surfn installed                     |"
echo -e "------------------------------------------------------------------"

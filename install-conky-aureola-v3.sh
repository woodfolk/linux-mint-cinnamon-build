#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-conky-aureola-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
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
echo -e "..installing Cony...                                              "
echo -e "------------------------------------------------------------------"


# if there is already a folder in tmp, delete or else do nothing
[ -d /tmp/aureola ] && rm -rf "/tmp/aureola" || echo ""
# download the github in folder /tmp/aureola

echo -e "---------------------------------------------------------------------------------"
echo -e " Checking if git is installed"
echo -e " Install git for an easy installation"
echo -e "---------------------------------------------------------------------------------"

	# G I T

	# check if git is installed
	if which git > /dev/null; then
		echo -e "git was installed. Proceding..."

		else

		echo -e "---------------------------------------------------------------------------------"
		echo -e " installing git..."
		echo -e "---------------------------------------------------------------------------------"

	  	sudo apt-get install -y git

	fi

echo -e "---------------------------------------------------------------------------------"
echo -e " Downloading files from github to tmp directory"
echo -e "---------------------------------------------------------------------------------"


rm -rf /tmp/aureola

git clone https://github.com/erikdubois/Aureola /tmp/aureola

# if there is already a folder in tmp, delete or else do nothing
[ -d ~/.aureola ] && rm -rf ~/.aureola
mv -f /tmp/aureola ~/.aureola

rm -rf /tmp/aureola

echo -e "------------------------------------------------------------------"
echo -e "|                  conky aureola installed                       |"
echo -e "------------------------------------------------------------------"

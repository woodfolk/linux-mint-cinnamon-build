#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-theme-mint-y-colora-collection-3.6-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website: 	   http://www.romanowoodfolk.com
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
echo -e " Installing mint-y-themes..."
echo -e "------------------------------------------------------------------"


# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

rm -rf /tmp/Mint-Y-Colora-Theme-Collection
git clone https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection /tmp/Mint-Y-Colora-Theme-Collection
find /tmp/Mint-Y-Colora-Theme-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Mint-Y-Colora-Theme-Collection/Cinnamon\ 3.4/* ~/.themes/
rm -rf /tmp/Mint-Y-Colora-Theme-Collection

echo -e "------------------------------------------------------------------"
echo -e "|                 mint-y-themes installed                        |"
echo -e "------------------------------------------------------------------"


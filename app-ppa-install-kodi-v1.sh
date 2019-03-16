#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-kodi-v1.sh
# Author:		Romano Woodfolk
# Created:		March 05, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website: 		http://www.romanowoodfolk.com 
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
	touch $SCRPTLOGFILE $SCRPTERRORFILE
	exec 2> $SCRPTERRORFILE
	exec > >(tee -i -a $SCRPTLOGFILE)
echo -e "------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "------------------------------------------------------------------"

echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Kodi..."
echo -e "------------------------------------------------------------------"
	
dpkg -l | grep -qw software-properties-common ||
			sudo apt-get install -y software-properties-common				# software-properties-common

echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Adding PPA repository"
echo -e "------------------------------------------------------------------"
sudo add-apt-repository -y ppa:team-xbmc/ppa


echo -e "------------------------------------------------------------------"
echo -e " Updating Package Cache"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Kodi"
echo -e "------------------------------------------------------------------"
sudo apt-get install -y kodi


echo -e "------------------------------------------------------------------"
echo -e "|                        Kodi Installed                          |"
echo -e "------------------------------------------------------------------"


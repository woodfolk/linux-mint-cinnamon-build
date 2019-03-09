#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-kodi-v1.sh
# Author:		Romano Woodfolk
# Created:		March 05, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
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
sudo add-apt-repository ppa:team-xbmc/ppa


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


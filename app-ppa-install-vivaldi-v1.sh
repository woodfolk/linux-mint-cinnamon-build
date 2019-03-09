#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-vivaldi-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Vivaldi Web Browser
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Vivaldi Web Browser...                                "
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e " Adding Vivaldi Repository...                                     "
echo -e "------------------------------------------------------------------"
sudo add-apt-repository 'deb http://repo.vivaldi.com/archive/deb/ stable main'


echo -e "------------------------------------------------------------------"
echo -e " Downloading Vivaldi Key...                                       "
echo -e "------------------------------------------------------------------"
wget -qO- http://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -


echo -e "------------------------------------------------------------------"
echo -e " Updating packages cache...                                       "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y

echo -e "------------------------------------------------------------------"
echo -e "..Installing Vivaldi Web Browser...                               "
echo -e "------------------------------------------------------------------"
sudo apt-get install -y vivaldi-stable
sudo apt-get install -y vivaldi-snapshot

echo -e "------------------------------------------------------------------"
echo -e "|                    Vivaldi installed                           |"
echo -e "------------------------------------------------------------------"

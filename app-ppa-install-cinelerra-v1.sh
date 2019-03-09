#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-cinelerra-v1.sh
# Author:		Romano Woodfolk
# Created:		February 17, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
# For Mint package install, go to:
#		System->Software Sources->Additional Repositories->Add a new repository 
# 		and enter the following line:
#		deb [trusted=yes] https://cinelerra-gg.org/download/pkgs/mint19 bionic main
#

echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Cinelerra...                                          "
echo -e "------------------------------------------------------------------"

dpkg -l | grep -qw software-properties-common ||
			sudo apt-get install -y software-properties-common				# software-properties-common


#---------------------------------------------------------------------------------#
# Then run these commands from a terminal to install:
# 		sudo apt-get update
#		sudo apt-get install -y cin
#---------------------------------------------------------------------------------#


echo -e "------------------------------------------------------------------"
echo -e " Adding Cinelerra Repository...                                   "
echo -e "------------------------------------------------------------------"
sudo add-apt-repository https://cinelerra-gg.org/download/pkgs/mint19 bionic main


echo -e "------------------------------------------------------------------"
echo -e " Updating Repository Cache...                                     "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y && sudo apt-get dist-upgrade -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Cinelerra...                                          "
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw cin || sudo apt-get install -y cin							# cin

#---------------------------------------------------------------------------------#
# To remove Cinelerra-GG, run: sudo apt-get remove cin
#---------------------------------------------------------------------------------#


echo -e  "------------------------------------------------------------------"
echo -e  "|                     Cinelerra installed                        |"
echo -e  "------------------------------------------------------------------"

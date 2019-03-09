#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-pithos-v1.sh
# Author:		Romano Woodfolk
# Created:		March 09, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# Pithos is a native Pandora Radio client for Linux, which is much more lightweight
# than the Pandora.com web client, and integrates with desktop features such as media
# keys, notifications, and the sound menu.
# http://ubuntuhandbook.org/index.php/2018/11/install-pandora-client-pithos-1-4-1-in-ubuntu-18-04-via-ppa/
# https://pithos.github.io/
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Pithos..."
echo -e "------------------------------------------------------------------"


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Adding PPA repository"
echo -e "------------------------------------------------------------------"
sudo add-apt-repository ppa:jonathonf/pithos


echo -e "------------------------------------------------------------------"
echo -e " Updating Package Cache"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Pithos"
echo -e "------------------------------------------------------------------"
sudo apt-get install -y pithos


#---------------------------------------------------------------------------------#
# To remove the software, simply run command in terminal:
#		sudo apt remove --autoremove pithos
#---------------------------------------------------------------------------------#
##sudo apt remove --autoremove pithos


echo -e "------------------------------------------------------------------"
echo -e "|                    Pithos Installed                            |"
echo -e "------------------------------------------------------------------"


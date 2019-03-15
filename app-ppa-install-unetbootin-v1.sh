#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-unetbootin-v*.sh
# Author:		Romano Woodfolk
# Created:		March 15, 2019
# Modified:		March 15, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://blog.programster.org/ubuntu-18-04-install-unetbootin
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Unetbootin..."
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e "| Adding Unetbootin PPA                                          |"
echo -e "------------------------------------------------------------------"
sudo add-apt-repository ppa:gezakovacs/ppa -y


echo -e "------------------------------------------------------------------"
echo -e "| Updating System Repositories                                   |"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e "| Installing Unetbootin                                          |"
echo -e "------------------------------------------------------------------"
sudo apt-get install -y unetbootin 


echo -e "------------------------------------------------------------------"
echo -e "|                 Unetbootin Installed                           |"
echo -e "------------------------------------------------------------------"


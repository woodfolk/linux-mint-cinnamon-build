#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-brackets-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		march 14, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Brackets...                                           "
echo -e "------------------------------------------------------------------"
echo -e ""

echo -e "------------------------------------------------------------------"
echo -e " Adding Brackets PPA...                                           "
echo -e "------------------------------------------------------------------"
sudo add-apt-repository ppa:webupd8team/brackets


echo -e "------------------------------------------------------------------"
echo -e " Updating Repository Cache...                                     "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Brackets...                                           "
echo -e "------------------------------------------------------------------"
sudo apt-get install -y brackets

echo -e "------------------------------------------------------------------"
echo -e "                     Brackets Installed                           "
echo -e "------------------------------------------------------------------"

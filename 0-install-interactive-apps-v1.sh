#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			0-install-interactive-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		March 13, 2019
# Modified:		March 13, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing EULA and Interactive Installs..."
echo -e "------------------------------------------------------------------"


EULA Move Microsoft Fonts Installs to EULA Installs on Master Script 1-install-core-utilities-v1.sh

Config Move Wireshark 2-install-cin-apps-v1-sh

Config Move VirtualBox 6-install-misc-apps-v1-sh


echo -e "------------------------------------------------------------------"
echo -e "|          EULA and Interactive Apps Installed                   |"
echo -e "------------------------------------------------------------------"


#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-notepadqq-v1.sh
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
echo -e " Installing Notepad Plus Plus..."
echo -e "------------------------------------------------------------------"


Notepadqq (https://notepadqq.com/wp/download/)
echo -e "------------------------------------------------------------------"
echo -e "| Adding Personal Package Archives (PPA)...                      |"
echo -e "------------------------------------------------------------------"
sudo add-apt-repository ppa:notepadqq-team/notepadqq


echo -e "------------------------------------------------------------------"
echo -e "| Updating repository database...                                |"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e "| Installing Notepad Plus Plus...                                |"
echo -e "------------------------------------------------------------------"
sudo apt-get install -y notepadqq


echo -e "------------------------------------------------------------------"
echo -e "|            Notepad Plus Plus Installed                         |"
echo -e "------------------------------------------------------------------"


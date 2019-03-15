#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-brave-v1.sh
# Author:		Romano Woodfolk
# Created:		March 15, 2019
# Modified:		March 15, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# http://ubuntuhandbook.org/index.php/2018/12/how-to-install-brave-web-browser-in-ubuntu-linux-mint/
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Brave Web Browser..."
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e " Installing Brave Web Browser..."
echo -e "------------------------------------------------------------------"
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -


echo -e "------------------------------------------------------------------"
echo -e " Installing Brave Web Browser..."
echo -e "------------------------------------------------------------------"
sudo sh -c 'echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com `lsb_release -sc` main" >> /etc/apt/sources.list.d/brave.list'


echo -e "------------------------------------------------------------------"
echo -e " Installing Brave Web Browser..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Brave Web Browser..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw brave-browser || 
			sudo apt-get install -y brave-browser 									# brave-browser
dpkg -l | grep -qw brave-keyring || 
			sudo apt-get install -y brave-keyring 									# brave-keyring

# To uninstall Brave Web Browser enter the following command
#sudo apt remove --autoremove brave-browser brave-keyring


echo -e "------------------------------------------------------------------"
echo -e "|                Brave Web Browser Installed                     |"
echo -e "------------------------------------------------------------------"


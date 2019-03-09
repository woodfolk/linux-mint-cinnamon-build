#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-pia-vpn-v1.sh
# Author:		Romano Woodfolk
# Created:		February 01, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# Install PIA VPN Network Manager Version
#
# https://www.privateinternetaccess.com
# https://installers.privateinternetaccess.com/download/pia-v82-installer-linux.tar.gz
# https://www.privateinternetaccess.com/installer/x/download_installer_linux
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Creating temporary folder"
echo -e "------------------------------------------------------------------"
mkdir /tmp/ais


#PIA VPN NM Version
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Downloading PIA VPN Network Manager Version...                    "
echo -e "------------------------------------------------------------------"
wget https://www.privateinternetaccess.com/installer/install_ubuntu.sh -O /tmp/ais/install_ubuntu.sh
/tmp/ais/install_ubuntu.sh


echo "After entering username, go to network manager and turn on VPN and select from PIA locations, enter password and boom!"


#PIA VPN GUI Version
## This needs to be tested
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Downloading PIA VPN GUI VERSION...                                "
echo -e "------------------------------------------------------------------"
wget -nc https://installers.privateinternetaccess.com/download/pia-v81-installer-linux.tar.gz -O /tmp/ais/piavpn.tar.gz


echo -e "------------------------------------------------------------------"
echo -e "Installing PIA VPN GUI VERSION...                                 "
echo -e "------------------------------------------------------------------"
tar -xzf piavpn.tar.gz
mv pia-v81-installer-linux.sh piavpn.sh

chmod +x piavpn.sh
chown -R $USER:$USER /tmp/ais/.pia_manager
/tmp/ais/piavpn.sh

#Clean up
echo -e "------------------------------------------------------------------"
echo -e "Removing PIA VPN GUI .tar.gz file..."
echo -e "------------------------------------------------------------------"
rm -rf piavpn.tar.gz

echo -e "------------------------------------------------------------------"
echo -e "Cleaning up                                                       "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y && apt-get upgrade -y

sudo apt-get autoremove -y
rm -rf /tmp/ais

echo -e "------------------------------------------------------------------"
echo -e "|          PIA VPN Network Manager Version installed             |"
echo -e "------------------------------------------------------------------"


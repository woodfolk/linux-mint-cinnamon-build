#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-screenkey-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		February 28, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Screenkey...                                         "
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e " Removing Old Screenkey amd Installing Python tools...            "
echo -e "------------------------------------------------------------------"
sudo rm -rf /opt/screenkey
dpkg -l | grep -qw python-gtk2 || 
			sudo apt-get install -y python-gtk2 								# python-gtk2
dpkg -l | grep -qw python-setuptools || 
			sudo apt-get install -y python-setuptools 						# python-setuptools
dpkg -l | grep -qw python-setuptools-git || 
			sudo apt-get install -y python-setuptools-git 					# python-setuptools-git
dpkg -l | grep -qw python-distutils-extra || 
			sudo apt-get install -y python-distutils-extra 					# python-distutils-extra


echo -e "------------------------------------------------------------------"
echo -e " Downloading Screenkey Installer...                               "
echo -e "------------------------------------------------------------------"
sudo git clone https://github.com/wavexx/screenkey.git /opt/screenkey


echo -e "------------------------------------------------------------------"
echo -e " Installing Screenkey...                                          "
echo -e "------------------------------------------------------------------"
cd /opt/screenkey
sudo ./setup.py install


echo -e "------------------------------------------------------------------"
echo -e "|                   Screenkey installed                          |"
echo -e "------------------------------------------------------------------"

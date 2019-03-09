#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-chrome-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		February 28, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Google Chrome
# Reference the following website(s):
# https://www.linuxbabe.com/ubuntu/install-google-chrome-ubuntu-18-04-lts
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..downloading Google Chrome Web Browser..."
echo -e "------------------------------------------------------------------"
cd /tmp && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


echo -e "------------------------------------------------------------------"
echo -e "..installing Google Chrome Web Browser..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f


echo -e "------------------------------------------------------------------"
echo -e "|                   Google Chrome installed                      |"
echo -e "------------------------------------------------------------------"


#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-virtualbox-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install VirtualBox                                                             #
#---------------------------------------------------------------------------------#
# Reference the following website(s):
# https://websiteforstudents.com/installing-virtualbox-5-2-ubuntu-17-04-17-10/
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing VirtualBox..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y virtualbox
sudo apt-get install -y virtualbox-ext-pack


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing VDE and VirtualBox Guest Additions..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y vde2 
sudo apt-get install -y virtualbox-guest-additions-iso


# Suggested packages:
# VDE is a virtual switch that can connect multiple virtual machines together,
# both local and remote VirtualBox Guest Additions ISO guest additions iso image
# for VirtualBox


# Adding users to vboxusers group
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..adding virtualbox users to the vboxusers group..."
echo -e "------------------------------------------------------------------"
sudo adduser $USER vboxusers


echo -e "------------------------------------------------------------------"
echo -e "|                    VirtualBox installed                        |"
echo -e "------------------------------------------------------------------"

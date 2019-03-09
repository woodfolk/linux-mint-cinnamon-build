#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-configurations-v1.sh
# Author:		Romano Woodfolk
# Created:		January 27, 2019
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
echo -e "..configuring system settings...                                  "
echo -e "------------------------------------------------------------------"


# Adding VirtualBox users to vboxusers group
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..adding virtualbox users to the vboxusers group...               "
echo -e "------------------------------------------------------------------"
sudo adduser $USERNAME vboxusers




# Configuring Flatpak for Flathub...
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Configuring Flatpak for Flathub...                                "
echo -e "------------------------------------------------------------------"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo




# Configuring Git
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Configuring Git...                                               "
echo -e "------------------------------------------------------------------"
git init
git config --global user.name "Romano Woodfolk"
git config --global user.email "woodfolk@gmail.com"
#sudo git config --system core.editor nano
sudo git config --global core.editor "atom --wait"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=100000'
git config --global push.default simple

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config



echo -e "------------------------------------------------------------------"
echo -e "|          system and application configurations                 |"
echo -e "------------------------------------------------------------------"

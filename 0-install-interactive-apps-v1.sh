#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			0-install-interactive-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		March 13, 2019
# Modified:		March 14, 2019 (110100100)
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


# Microsoft VS Code
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Microsoft Visual Studio Code..."
echo -e "------------------------------------------------------------------"
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo apt-get update -y
sudo apt-get install -y code


# Microsoft Fonts Install
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Microsoft Fonts..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw ttf-mscorefonts-installer ||
			sudo apt-get install -y ttf-mscorefonts-installer				# ttf-mscorefonts-installer

# Microsoft PowerShell Install
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing PowerShell..."
echo -e "------------------------------------------------------------------"
echo -e ""
cd /tmp && wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update -y
sudo apt-get install -y powershell


# Microsoft Skype Install
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Skype...                                             "
echo -e "------------------------------------------------------------------"
echo -e ""
sudo dpkg --add-architecture i386
cd /tmp && wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb


# Wireshark Install
dpkg -l | grep -qw wireshark || sudo apt-get install -y wireshark 	# wireshark


# VirtualBox Install
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing virtualbox...														"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw virtualbox || sudo apt-get install -y virtualbox  # virtualbox
dpkg -l | grep -qw virtualbox-ext-pack ||
			sudo apt-get install -y virtualbox-ext-pack   					# virtualbox-ext-pack
dpkg -l | grep -qw virtualbox-guest-additions-iso ||
			sudo apt-get install -y virtualbox-guest-additions-iso		# virtualbox-guest-additions-iso
# Adding VirtualBox users to vboxusers group
sudo adduser $USER vboxusers



echo -e "------------------------------------------------------------------"
echo -e "|          EULA and Interactive Apps Installed                   |"
echo -e "------------------------------------------------------------------"


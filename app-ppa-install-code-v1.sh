#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-code-v1.sh
# Author:		Romano Woodfolk
# Created:		January 31, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.								 #
#---------------------------------------------------------------------------------#
#  Install Microsoft Visual Studio Code                                           #
#---------------------------------------------------------------------------------#
# Reference the following website(s):
# https://go.microsoft.com/fwlink/?LinkID=760868
# https://dzone.com/articles/install-visual-studio-code-on-ubuntu-1804
# https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-18-04/
# http://ubuntuhandbook.org/index.php/2018/05/vs-code-1-23-released-install-ubuntu-18-04/
#
echo -e "------------------------------------------------------------------"
echo -e " Creating Log files..."
echo -e "------------------------------------------------------------------"
# Defining Script Variables 
	SCRPTNAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")" 
	SCRPTNOW=`date +%Y%m%d%H%M%S`													# Current Date & Time Suffix
	SCRPTLOGFILE="$SCRPTNAME"_instlog_"$SCRPTNOW".log						# Script Log File
	SCRPTERRORFILE="$SCRPTNAME"_errlog_"$SCRPTNOW".log						# Error Log File
# Creating Log Files
	touch $SCRPTERRORFILE
	exec 2> $SCRPTERRORFILE
echo -e "------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "------------------------------------------------------------------"

echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Visual Studio Code..."
echo -e "------------------------------------------------------------------"
echo -e ""

# Adding the Microsoft repository
echo -e "------------------------------------------------------------------"
echo -e " Adding the Microsoft repository..."
echo -e "------------------------------------------------------------------"
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Download the Microsoft repository GPG keys
echo -e "------------------------------------------------------------------"
echo -e " Downloading the Microsoft repository GPG keys..."
echo -e "------------------------------------------------------------------"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

# Register the Microsoft repository GPG keys
echo -e "------------------------------------------------------------------"
echo -e " Registering the Microsoft repository GPG keys..."
echo -e "------------------------------------------------------------------"
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Update the list of products
echo -e "------------------------------------------------------------------"
echo -e " Updating repository database..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y

# Install VS Code
echo -e "------------------------------------------------------------------"
echo -e " Installing Microsoft Visual Studio Code..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y code


echo -e "------------------------------------------------------------------"
echo -e "|           Microsoft Visual Studio Code installed               |"
echo -e "------------------------------------------------------------------"

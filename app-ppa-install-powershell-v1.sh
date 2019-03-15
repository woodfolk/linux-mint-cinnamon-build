#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-powershell-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 14, 2019 (110100100)
# Version:		1.0.0
# Website 	: 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Microsoft PowerShell
# https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-powershell-core-on-linux
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing PowerShell..."
echo -e "------------------------------------------------------------------"
echo -e ""


# Download the Microsoft repository GPG keys
echo -e "------------------------------------------------------------------"
echo -e " Downloading the Microsoft repository GPG keys..."
echo -e "------------------------------------------------------------------"
cd /tmp && wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb


# Register the Microsoft repository GPG keys
echo -e "------------------------------------------------------------------"
echo -e " Registering the Microsoft repository GPG keys..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i packages-microsoft-prod.deb


# Update the list of products
echo -e "------------------------------------------------------------------"
echo -e " Updating repository database..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


# Install PowerShell
echo -e "------------------------------------------------------------------"
echo -e " Installing Microsoft PowerShell..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y powershell


# Start PowerShell
echo -e "------------------------------------------------------------------"
echo -e " ..to start PowerShell enter 'pwsh'..."
echo -e "------------------------------------------------------------------"
#pwsh


echo -e "------------------------------------------------------------------"
echo -e "|              Microsoft PowerShell installed                    |"
echo -e "------------------------------------------------------------------"

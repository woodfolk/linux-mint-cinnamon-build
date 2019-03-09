#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-lmt-v1.sh
# Author:		Romano Woodfolk
# Created:		March 05, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# Install Laptop Mode Tools 
# (https://fossbytes.com/things-to-do-after-installing-linux-mint/)
# Laptop Mode Tools is a laptop power saving package for Linux systems that allows 
# you to configure it in several ways to get more battery life. Running your laptop 
# in power save mode reduces overheating. Laptop Mode Tools will help you get extended
# battery life as well as reduce overheating to an extent. (((( Laptop Mode Tools and
# TLP do not play well together ))) Uninstall TLP before installing Laptop Mode Tools.
# https://www.fossmint.com/things-to-do-after-installing-linux-mint-19/
# https://itsfoss.com/reduce-overheating-laptops-linux/
# 
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Laptop Mode Tools..."
echo -e "------------------------------------------------------------------"


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Do not install/run inconjunction with Laptop Mode Tool..."
echo -e "------------------------------------------------------------------"
sleep 3


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Adding PPA repository"
echo -e "------------------------------------------------------------------"
sudo add-apt-repository ppa:ubuntuhandbook1/apps


echo -e "------------------------------------------------------------------"
echo -e " Updating Package Cache"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Laptop Mode Tool"
echo -e "------------------------------------------------------------------"
sudo apt-get install -y laptop-mode-tools


echo -e "------------------------------------------------------------------"
echo -e " Run The GUI Laptop Mode Tool"
echo -e "------------------------------------------------------------------"
##sudo gksu lmt-config-gui


echo -e "------------------------------------------------------------------"
echo -e "|            Laptop Mode Tools Installed                         |"
echo -e "------------------------------------------------------------------"


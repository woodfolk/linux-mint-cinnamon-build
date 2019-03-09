#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-etcher-v1.sh
# Author:		Romano Woodfolk
# Created:		January 29, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Etcher
# Reference the follow website:
# https://www.omgubuntu.co.uk/2017/05/how-to-install-etcher-on-ubuntu
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Etcher..."
echo -e "------------------------------------------------------------------"
echo -e ""


# adding Etcher Personal Package Archives (PPA)
echo -e "------------------------------------------------------------------"
echo -e " Adding Etcher Personal Package Archives (PPA)..."
echo -e "------------------------------------------------------------------"
echo "deb https://dl.bintray.com/resin-io/debian stable etcher" | 
			sudo tee /etc/apt/sources.list.d/etcher.list


# adding the Etcher PPA repository key
echo -e "------------------------------------------------------------------"
echo -e " Adding the Etcher PPA repository key..."
echo -e "------------------------------------------------------------------"
sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61


echo -e "------------------------------------------------------------------"
echo -e " Updating repository database..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Etcher..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y etcher-electron 											# etcher-electron


echo -e "------------------------------------------------------------------"
echo -e "|                      Etcher installed                          |"
echo -e "------------------------------------------------------------------"

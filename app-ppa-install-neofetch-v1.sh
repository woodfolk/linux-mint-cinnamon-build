#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-neofetch-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1
# “Tessa” Cinnamon Edition an ubuntu based distributions.
#---------------------------------------------------------------------------------#
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
echo -e " Installing Neofetch..."
echo -e "------------------------------------------------------------------"
echo -e ""


# Adding the Neofetch repository
echo -e "------------------------------------------------------------------"
echo -e " Adding the Neofetch repository..."
echo -e "------------------------------------------------------------------"
sudo add-apt-repository -y ppa:dawidd0811/neofetch


# Update the sources list
echo -e "------------------------------------------------------------------"
echo -e " Updating sources list..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


# Install neofetch
echo -e "------------------------------------------------------------------"
echo -e " Installing Neofetch..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y neofetch


# To display system's information run the neofetch command: neofetch

echo -e "------------------------------------------------------------------"
echo -e "|                      Neofetch installed                         |"
echo -e "------------------------------------------------------------------"


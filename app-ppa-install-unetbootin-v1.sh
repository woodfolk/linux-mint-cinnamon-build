#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-unetbootin-v*.sh
# Author:		Romano Woodfolk
# Created:		March 15, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://blog.programster.org/ubuntu-18-04-install-unetbootin
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
echo -e " Installing Unetbootin..."
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e "| Adding Unetbootin PPA                                          |"
echo -e "------------------------------------------------------------------"
sudo add-apt-repository -y ppa:gezakovacs/ppa -y


echo -e "------------------------------------------------------------------"
echo -e "| Updating System Repositories                                   |"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e "| Installing Unetbootin                                          |"
echo -e "------------------------------------------------------------------"
sudo apt-get install -y unetbootin 


echo -e "------------------------------------------------------------------"
echo -e "|                 Unetbootin Installed                           |"
echo -e "------------------------------------------------------------------"


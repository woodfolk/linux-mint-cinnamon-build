#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-tlp-v1.sh
# Author:		Romano Woodfolk
# Created:		March 05, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# TLP is a power management tool in Linux. It’s a daemon that is pre-configured to
# reduce overheating as well as improve battery life. You just need to install TLP
# and restart your system. It will be auto-start at each boot and keep on running
# in background. I have always included installation of TLP in top things to do after
# installing Ubuntu for its simplicity and usefulness.
# https://www.fossmint.com/things-to-do-after-installing-linux-mint-19/
# https://itsfoss.com/reduce-overheating-laptops-linux/
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
echo -e " Install TLP Power Management Tool (For Desktops)"
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
sudo add-apt-repository -y ppa:linrunner/tlp


echo -e "------------------------------------------------------------------"
echo -e " Updating Package Cache"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing TLP"
echo -e "------------------------------------------------------------------"
sudo apt-get install -y tlp 
sudo apt-get install -y tlp-rdw


echo -e "------------------------------------------------------------------"
echo -e " Starting TLP"
echo -e "------------------------------------------------------------------"
sudo tlp start

		
echo -e "------------------------------------------------------------------"
echo -e " To uninstall TLP, you can use the following commands:"
echo -e " 		sudo apt-get remove tlp"
echo -e "		sudo add-apt-repository --remove ppa:linrunner/tlp"
echo -e "------------------------------------------------------------------"
##sudo apt-get remove tlp
##sudo add-apt-repository --remove ppa:linrunner/tlp


echo -e "------------------------------------------------------------------"
echo -e "|      TLP Power Management Tool (For Desktops) Installed        |"
echo -e "------------------------------------------------------------------"


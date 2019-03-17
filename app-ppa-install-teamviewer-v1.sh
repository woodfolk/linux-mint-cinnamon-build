#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-teamviewer-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Teamviewer                                                             #
# Reference the following website(s):
# https://websiteforstudents.com/installing-teamviewer-on-ubuntu-16-04-17-10-18-04/
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
echo -e "..installing Teamviewer..."
echo -e "------------------------------------------------------------------"
echo -e ""


# downloading teamviewer 14 preview
echo -e "------------------------------------------------------------------"
echo -e "..downloading Teamviewer 14 Preview..."
echo -e "------------------------------------------------------------------"
echo -e""
cd /tmp && wget https://download.teamviewer.com/download/linux/version_14x/teamviewer_amd64.deb # TeamViewer Preview


# downloading teamviewer
echo -e "------------------------------------------------------------------"
echo -e "..downloading Teamviewer 14 stable..."
echo -e "------------------------------------------------------------------"
echo -e""
cd /tmp && wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
echo -e""


# Install TeamViewer
echo -e "------------------------------------------------------------------"
echo -e "..installing TeamViewer 14..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i teamviewer_amd64.deb
sudo apt-get install -f


echo -e "------------------------------------------------------------------"
echo -e "|                 TeamViewer installed                           |"
echo -e "------------------------------------------------------------------"

#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-synology-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March	 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Synology Assistant                                                     #
# Reference the following website(s):
# https://www.virtono.com/community/tutorial-how-to/installing-synology-assistant-on-ubuntu/
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
echo -e " Installing Synology Assistant..."
echo -e "------------------------------------------------------------------"
echo -e ""


# downloading stacer
echo -e "------------------------------------------------------------------"
echo -e " Downloading Synology Assistant..."
echo -e "------------------------------------------------------------------"
cd /tmp && wget https://global.download.synology.com/download/Tools/Assistant/6.2-23733/Ubuntu/x86_64/synology-assistant_6.2-23733_amd64.deb


# Install Synology Assistant
echo -e "------------------------------------------------------------------"
echo -e " Installing Synology Assistant..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i synology-assistant_6.2-23733_amd64.deb


# echo "Installing Syn Assist and CloudStation Backup"

# wget -O $tmp_dir/synassistant.deb https://global.download.synology.com/download/Tools/Assistant/6.1-15163/Ubuntu/x86_64/synology-assistant_6.1-15163_amd64.deb

# wget -O $tmp_dir/cloudback.deb https://global.download.synology.com/download/Tools/CloudStationBackup/4.2.6-4408/Ubuntu/Installer/x86_64/synology-cloud-station-backup-4408.x86_64.deb

# dpkg -i $tmp_dir/synassistant.deb

# dpkg -i $tmp_dir/cloudback.deb

# apt-get install -f 


echo -e "------------------------------------------------------------------"
echo -e "|             Synology Assistant installed                       |"
echo -e "------------------------------------------------------------------"

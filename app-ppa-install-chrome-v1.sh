#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-chrome-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Google Chrome
# Reference the following website(s):
# https://www.linuxbabe.com/ubuntu/install-google-chrome-ubuntu-18-04-lts
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
	touch $SCRPTLOGFILE $SCRPTERRORFILE
	exec 2> $SCRPTERRORFILE
	exec > >(tee -i -a $SCRPTLOGFILE)
echo -e "------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "------------------------------------------------------------------"


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..downloading Google Chrome Web Browser..."
echo -e "------------------------------------------------------------------"
cd /tmp && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


echo -e "------------------------------------------------------------------"
echo -e "..installing Google Chrome Web Browser..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f


echo -e "------------------------------------------------------------------"
echo -e "|                   Google Chrome installed                      |"
echo -e "------------------------------------------------------------------"


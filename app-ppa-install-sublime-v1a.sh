#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-sublime-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1 	 #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
#https://download.sublimetext.com/sublime_text_3_build_3176_x64.tar.bz2
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

echo -e "------------------------------------------------------------------"
echo -e " Installing Sublimetext...                                        "
echo -e "------------------------------------------------------------------"

echo -e "------------------------------------------------------------------"
echo -e " Removing .deb file Sublimetext...                                "
echo -e "------------------------------------------------------------------"
rm /tmp/sublime-text_build-3176_amd64.deb


echo -e "------------------------------------------------------------------"
echo -e " Downloading  Sublimetext...                                      "
echo -e "------------------------------------------------------------------"
wget https://download.sublimetext.com/sublime-text_build-3176_amd64.deb -O /tmp/sublime-text_build-3176_amd64.deb


echo -e "------------------------------------------------------------------"
echo -e " Installing Sublimetext...                                        "
echo -e "------------------------------------------------------------------"
sudo dpkg -i /tmp/sublime-text_build-3176_amd64.deb


echo -e "------------------------------------------------------------------"
echo -e " Removing .deb file Sublimetext...                                "
echo -e "------------------------------------------------------------------"
rm /tmp/sublime-text_build-3176_amd64.deb


echo -e "------------------------------------------------------------------"
echo -e "|                  Sublime Text installed                        |"
echo -e "------------------------------------------------------------------"

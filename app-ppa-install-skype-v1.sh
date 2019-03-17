#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-skype-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.0
# Website 	: 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# Install Skype
# Reference the following website(s):
# https://www.linuxbabe.com/ubuntu/install-skype-ubuntu-18-04-lts-desktop
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
echo -e "..installing Skype...                                             "
echo -e "------------------------------------------------------------------"
echo -e ""


# enable multiarch for better 64-bit compatibility
echo -e "------------------------------------------------------------------"
echo -e "..enabling multiarch for better 64-bit compatibility...           "
echo -e "------------------------------------------------------------------"
sudo dpkg --add-architecture i386


# downloading skype
echo -e "------------------------------------------------------------------"
echo -e "..downloading skype...                                            "
echo -e "------------------------------------------------------------------"
cd /tmp && wget https://repo.skype.com/latest/skypeforlinux-64.deb


# Install Skype
echo -e "------------------------------------------------------------------"
echo -e "..installing Skype..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i skypeforlinux-64.deb


echo -e "------------------------------------------------------------------"
echo -e  "|                     Skype installed                            |"
echo -e "------------------------------------------------------------------"

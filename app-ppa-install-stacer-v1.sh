#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-stacer-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website 	: 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1
# “Tessa” Cinnamon Edition an ubuntu based distributions.
#---------------------------------------------------------------------------------#
#  Install Stacer
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
echo -e "..installing Stacer...                                            "
echo -e "------------------------------------------------------------------"
echo -e ""


# downloading stacer
echo -e "------------------------------------------------------------------"
echo -e "..downloading stacer...                                           "
echo -e "------------------------------------------------------------------"
cd /tmp && wget -q https://github.com/oguzhaninan/Stacer/releases/download/v1.0.9/stacer_1.0.9_amd64.deb


# Install Stacer
echo -e "------------------------------------------------------------------"
echo -e "..installing Stacer...                                            "
echo -e "------------------------------------------------------------------"
sudo dpkg -i stacer*.deb


echo -e "------------------------------------------------------------------"
echo -e "|                      Stacer installed                          |"
echo -e "------------------------------------------------------------------"


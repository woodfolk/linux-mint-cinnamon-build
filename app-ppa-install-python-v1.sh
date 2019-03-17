#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-python-v1.sh
# Author:		Romano Woodfolk
# Created:		January 29, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Python
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
echo -e "..installing Python Tools..."
echo -e "------------------------------------------------------------------"
echo -e ""


# installing PIP, packages, dev tools, and Pycharm
echo -e "------------------------------------------------------------------"
echo -e "..PIP, packages, dev tools, and Pycharm..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw python3-pip ||
			sudo apt-get install -y python3-pip									  # python3-pip
dpkg -l | grep -qw build-essential ||
			sudo apt-get install -y build-essential							  # build-essential
dpkg -l | grep -qw libssl-dev || sudo apt-get install -y libssl-dev	  # libssl-dev
dpkg -l | grep -qw libffi-dev || sudo apt-get install -y libffi-dev	  # libffi-dev
dpkg -l | grep -qw python-dev || sudo apt-get install -y python-dev	  # python-dev
dpkg -l | grep -qw openjdk-8-jdk ||
			sudo apt-get install -y openjdk-8-jdk								  # openjdk-8-jdk
dpkg -l | grep -qw python3-setuptools ||
			sudo apt-get install -y python3-setuptools						  # python3-setuptools


echo -e "------------------------------------------------------------------"
echo -e  "|                      Python installed                          |"
echo -e "------------------------------------------------------------------"


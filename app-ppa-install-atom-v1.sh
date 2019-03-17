#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-atom-v1.sh
# Author:		Romano Woodfolk
# Created:		February 01, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1  	 #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Atom
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
echo -e "..installing Atom..."
echo -e "------------------------------------------------------------------"
echo -e ""

# downloading atom
echo -e "------------------------------------------------------------------"
echo -e "..downloading atom..."
echo -e "------------------------------------------------------------------"
wget -O $tmp_dir/atom-amd64.deb https://atom.io/download/deb

# installing atom
echo -e "------------------------------------------------------------------"
echo -e"..installing Atom..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i $tmp_dir/atom-amd64.deb
sudo apt-get install -f

apm install atom-html-preview


echo -e "------------------------------------------------------------------"
echo -e "|                      Atom installed                            |"
echo -e "------------------------------------------------------------------"

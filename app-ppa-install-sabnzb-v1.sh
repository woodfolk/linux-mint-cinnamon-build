#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-sabnzbd-v1.sh
# Author:		Romano Woodfolk
# Created:		February 26, 2019
# Modified:		April 10, 2019 (110100100)
# Version:		1.0.2
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1	 #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#https://sabnzbd.org/wiki/installation/install-ubuntu-repo
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
echo -e " Enabling multiverse and universe repository...                                        "
echo -e "------------------------------------------------------------------"

# multiverse and universe repository are enabled by defauld on Linux Mint
dpkg -l | grep -qw software-properties-common ||
			sudo apt-get install -y software-properties-common				# software-properties-common
sudo add-apt-repository multiverse
sudo add-apt-repository universe


echo -e "------------------------------------------------------------------"
echo -e " Adding SABnzb PPA...                                             "
echo -e "------------------------------------------------------------------"
sudo add-apt-repository -y ppa:jcfp/nobetas
sudo add-apt-repository -y ppa:jcfp/sab-addons



echo -e "------------------------------------------------------------------"
echo -e " Updating Repository Cache...                                     "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y && sudo apt-get dist-upgrade -y


echo -e "------------------------------------------------------------------"
echo -e " Installing sabnzbdplus...                                        "
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw sabnzbdplus || sudo apt-get install -y sabnzbdplus	# sabnzbdplus
dpkg -l | grep -qw python-sabyenc || 
			sudo apt-get install -y python-sabyenc									# python-sabyenc
dpkg -l | grep -qw par2-tbb || sudo apt-get install -y par2-tbb			# par2-tbb



# To start the program, find the Sabnzbd+ item in the Networking section of your
# desktop menu, or from the command line just execute:
# sabnzbdplus
# You should run SABnzbd as a normal user: the program does not need root access 
# or any other special permissions.


echo -e "------------------------------------------------------------------"
echo -e "|                      sabnzbdplus installed                     |"
echo -e "------------------------------------------------------------------"


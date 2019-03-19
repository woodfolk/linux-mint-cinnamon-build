#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-docker-v1.sh
# Author:		Romano Woodfolk
# Created:		January 29, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Docker
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
echo -e " Installing Docker..."
echo -e "------------------------------------------------------------------"
echo -e ""


# installing dependent application
echo -e "------------------------------------------------------------------"
echo -e " Adding support packages..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw apt-transport-https || 
			sudo apt-get install -y apt-transport-https   					# apt-transport-https
dpkg -l | grep -qw ca-certificates || 
			sudo apt-get install -y ca-certificates   						# ca-certificates
dpkg -l | grep -qw curl || 
			sudo apt-get install -y curl   										# curl
dpkg -l | grep -qw software-properties-common || 
			sudo apt-get install -y software-properties-common   			# software-properties-common


# adding the Docker PPA repository key
echo -e "------------------------------------------------------------------"
echo -e " Adding the Docker PPA repository key..."
echo -e "------------------------------------------------------------------"
wget -O - https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" > /etc/apt/sources.list.d/docker.list

echo -e "------------------------------------------------------------------"
echo -e " Updating repository database..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y

echo -e "------------------------------------------------------------------"
echo -e " Installing Docker..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y docker-ce

echo -e "------------------------------------------------------------------"
echo -e "|                      Docker installed                          |"
echo -e "------------------------------------------------------------------"

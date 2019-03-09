#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-simplescreenrecorder-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Simplescreenrecorder...                               "
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e " Adding PPA Repository...                                         "
echo -e "------------------------------------------------------------------"
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder


echo -e "------------------------------------------------------------------"
echo -e " Updating Repository Cache...                                     "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Simplescreenrecorder...                               "
echo -e "------------------------------------------------------------------"
sudo apt-get install -y simplescreenrecorder


echo -e "------------------------------------------------------------------"
echo -e "|              Simplescreenrecorder installed                    |"
echo -e "------------------------------------------------------------------"

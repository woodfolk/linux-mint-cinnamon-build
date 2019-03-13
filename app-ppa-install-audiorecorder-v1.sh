#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-audiorecorder-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 13, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Audio-Recorder...                                     "
echo -e "------------------------------------------------------------------"


#Audio-recorder
echo -e "------------------------------------------------------------------"
echo -e " Adding Audio-Recorder PPA...                                     "
echo -e "------------------------------------------------------------------"
sudo add-apt-repository ppa:audio-recorder/ppa


echo -e "------------------------------------------------------------------"
echo -e " Updating Repository Cache...                                     "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing Audio-Recorder...                                     "
echo -e "------------------------------------------------------------------"
sudo apt-get install -y audio-recorder 


echo -e "------------------------------------------------------------------"
echo -e "|               Audio-Recorder Installed                         |"
echo -e "------------------------------------------------------------------"

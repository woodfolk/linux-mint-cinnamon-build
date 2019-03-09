#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-peek-v1.sh
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
echo -e " Installing Peek                                                  "
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e " Downloading Peek                                                  "
echo -e "------------------------------------------------------------------"
wget https://github.com/phw/peek/releases/download/v0.7.2/peek-0.7.2-Linux.deb


echo -e "------------------------------------------------------------------"
echo -e " Installing Dependences                                           "
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw libsdl1.2debian || 
			sudo apt-get install -y libsdl1.2debian 							# libsdl1.2debian
dpkg -l | grep -qw ffmpeg || sudo apt-get install -y ffmpeg 			# ffmpeg
dpkg -l | grep -qw libavdevice-ffmpeg56 || 
			sudo apt-get install -y libavdevice-ffmpeg56 					# libavdevice-ffmpeg56 
sudo apt-get install -f


echo -e "------------------------------------------------------------------"
echo -e " Installing Peek                                                  "
echo -e "------------------------------------------------------------------"
sudo dpkg -i peek-0.7.2-Linux.deb
rm peek-0.7.2-Linux.deb


echo -e "------------------------------------------------------------------"
echo -e "|                         Peek installed                         |"
echo -e "------------------------------------------------------------------"


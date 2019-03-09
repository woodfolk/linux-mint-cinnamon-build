#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-zoom-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 06, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://websiteforstudents.com/install-zoom-for-linux-client-on-ubuntu-16-04-17-10-18-04/
# Installing Zoom
echo -e "------------------------------------------------------------------"
echo -e " Installing dependency...                                         "
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw libxcb-xtest0 || sudo apt-get install -y libxcb-xtest0      # libxcb-xtest0


echo -e "------------------------------------------------------------------"
echo -e " Downloading Zoom Meeting Client...                               "
echo -e "------------------------------------------------------------------"
cd /tmp && wget https://zoom.us/client/latest/zoom_amd64.deb -O /tmp/zoom_install.deb


echo -e "------------------------------------------------------------------"
echo -e " Installing Zoom Meeting Client...                                "
echo -e "------------------------------------------------------------------"
dpkg -i /tmp/zoom_install.deb



echo -e "------------------------------------------------------------------"
echo -e "|                  Simplenote installed                          |"
echo -e "------------------------------------------------------------------"

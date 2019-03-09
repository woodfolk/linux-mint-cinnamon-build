#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-simplenote-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		March 01, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Simplenote
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Simplenote...                                          "
echo -e "------------------------------------------------------------------"

# downloading Simplenote
echo -e "------------------------------------------------------------------"
echo -e "..downloading Simplenote...                                       "
echo -e "------------------------------------------------------------------"

cd /tmp && wget https://github.com/Automattic/simplenote-electron/releases/download/v1.5.0/Simplenote-linux-1.5.0-amd64.deb

sudo dpkg -i Simplenote-linux-1.5.0-amd64.deb

echo -e "------------------------------------------------------------------"
echo -e "|                  Simplenote installed                          |"
echo -e "------------------------------------------------------------------"


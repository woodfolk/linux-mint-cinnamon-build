#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-stacer-v1.sh
# Author:		Romano Woodfolk
# Created:		January 30, 2019
# Modified:		March 01, 2019 (110100100)
# Version:		1.0.0
# Website 	: 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1
# “Tessa” Cinnamon Edition an ubuntu based distributions.
#---------------------------------------------------------------------------------#
#  Install Stacer
#
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


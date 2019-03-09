#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-redshift-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Redshift
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Redshift...                                          "
echo -e "------------------------------------------------------------------"


dpkg -l | grep -qw redshift || sudo apt-get install -y redshift		# redshift
dpkg -l | grep -qw redshift-gtk || 
			sudo apt-get install -y redshift-gtk								# redshift-gtk
dpkg -l | grep -qw geoclue-2.0 || 
			sudo apt-get install -y geoclue-2.0									# geoclue-2.0


echo -e "------------------------------------------------------------------"
echo -e "|                    Redshift installed                          |"
echo -e "------------------------------------------------------------------"


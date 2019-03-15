#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-script-template-v1.sh
# Author:		Romano Woodfolk
# Created:		Month XX, 20XX
# Modified:		Month XX, 20XX (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing xxxxxxxx..."
echo -e "------------------------------------------------------------------"


{Code Goes Here}
echo -e "------------------------------------------------------------------"
echo -e "|                                                                |"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw xyz || sudo apt-get install -y xyz				# xyz
cd /tmp && wget -q 
{Code Goes Here}


echo -e "------------------------------------------------------------------"
echo -e "|                                                                |"
echo -e "------------------------------------------------------------------"


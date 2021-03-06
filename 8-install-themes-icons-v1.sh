#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			8-install-themes-icons-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 29, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Themes and Icons...                                  "
echo -e "------------------------------------------------------------------"


#---------------------------------------------------------------------------------#
#	Installing Arc-flatabulous theme                                               #
#---------------------------------------------------------------------------------#
##sh install-arc-flatabulous-theme-v*.sh
# Broken beyond my troubleshooting skills

#---------------------------------------------------------------------------------#
#	Installing Breeze Cursor theme                                                 #
#---------------------------------------------------------------------------------#
sudo apt-get install -y breeze-cursor-theme


#---------------------------------------------------------------------------------#
#	Installing Conky Aureola                                                       #
#---------------------------------------------------------------------------------#
sh install-conky-aureola-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Arc theme                                                           #
#---------------------------------------------------------------------------------#
sh install-gtk-arc-theme-v*.sh


#---------------------------------------------------------------------------------#
#	Installing  Sardi icons                                                        #
#---------------------------------------------------------------------------------#
sh install-icons-sardi-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Sardi-extra icons                                                   #
#---------------------------------------------------------------------------------#
sh install-icons-sardi-extra-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Surfn icons                                                         #
#---------------------------------------------------------------------------------#
sh install-icons-surfn-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Plank themes                                                        #
#---------------------------------------------------------------------------------#
sh install-plank-themes-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Arc Colora themes                                                   #
#---------------------------------------------------------------------------------#
sh install-theme-arc-colora-collection-3.4-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Arc Colora themes                                                   #
#---------------------------------------------------------------------------------#
sh install-theme-arc-colora-collection-3.6-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Mint-Y themes                                                       #
#---------------------------------------------------------------------------------#
sh install-theme-mint-y-colora-collection-3.6-v*.sh



echo -e  "------------------------------------------------------------------"
echo -e  "|            theme and icons applications installed              |"
echo -e  "------------------------------------------------------------------"


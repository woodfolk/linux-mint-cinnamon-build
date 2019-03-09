#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			master-install.sh
# Author:		Romano Woodfolk
# Created:		January 24, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website:   	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
# System requirements:
#		1 GB RAM (2GB recommended for a comfortable usage).
#		15 GB of disk space (20GB recommended).
#		1024×768 resolution (on lower resolutions, press ALT to drag windows with
#								  the mouse if they don’t fit in the screen).
#
# This script was designed for Linux Mint 19.1 “Tessa” Cinnamon Edition and can
# be modified to support Debian and/or Debian-based distributions.
#
# Below are the software packages being installed via this script:
#
#---------------------------------------------------------------------------------#
# This script calls sub-scripts that will install applications under the following
# catagories.
#
# 			Accessories:			Anon Surf:				Chrome Apps:
# 			Educatin:				Electronics:			Games:
#			Graphics:				Hamradio:				Internet:
#			Office:					Programming:			Sound & Video:
#			System Tools:			Universal Access:		Virtualization:
#
#---------------------------------------------------------------------------------#
# Global Variable Definitions
#---------------------------------------------------------------------------------#
# varibles
    NOW=`date +%Y%m%d%H%M%S`                    # Current Date & Time Suffix
    LOGFILE=/var/log/instlog$NOW.log         	# Script Log File
    ERRORFILE=/var/log/errlog$NOW.log         	# Error Log File
#    OSTYPE="Default"                           # Default OS Ubuntu
#    DIST="UNKNOWN"										# Distrobution
#    VER="UNKNOWN"										# Version
    NAME=""													# User's Name
    USERNAME=""											# username
#    OSINSTALL=$1                               # OS Installation Choice
#    INSTALLFILE=$2                             # External Install List
#    APPLIST=$3                               	# External Apps List
# colors
    NORMAL=`echo "\033[m"`								# 					${NORMAL}
    MENU=`echo "\033[36m"`								# blue 			${NORMAL}
    NUMBER=`echo "\033[33m"`							# yellow 		${NORMAL}
    FGRED=`echo "\033[41m"`							# red  			${FGRED}
    RED_TEXT=`echo "\033[31m"`						# 					${RED_TEXT}
    ENTER_LINE=`echo "\033[33m"`						# 					${COLOR}
    COLOR='\033[01;31m' 								# bold red 		${NORMAL}
    RESET='\033[00;00m' 								# normal white ${RESET}

#=================================================================================#
# Function Definitions                                                            #
#=================================================================================#

# Main Install Options Menu
funcMainMenu () {
    echo -e ""; clear; echo -e ""    										# clear Screen
    echo -e "${MENU}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~${NORMAL}"
    echo -e "                Main Build Menu"
    echo -e "${MENU}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~${NORMAL}"
    echo -e "  Welcome to the Master Build Install Script"
    echo -e "              1.0.0 - 2019-01-24"
    echo -e "${MENU}**${NUMBER} 1)${MENU} Default Build - ${RESET} Minimal ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} Install Headless Edition ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU} Install Standard Edition ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU} Install Full Edition ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5)${MENU} Install Home Edition ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 6)${MENU} Install Embedded Edition ${NORMAL}"
    echo -e "${MENU}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
}

#---------------------------------------------------------------------------------#
#	Check for root/sudo                                                            #
#---------------------------------------------------------------------------------#
funcAreYouRoot () {
    echo -e ""; clear; echo -e ""    											# clear Screen
    echo -e "Git is require by this script. run sudo apt-get install -yq git before running"
    echo -e "running this script..."
    echo -e "Elevated rights are needed to run this script"
    sleep 1
    echo -e ""; clear; echo -e ""    											# clear Screen
    if [ $USER != 'root' ]
    then
        echo -e "YOU ARE NOT root... This script REQUIRES root access"
        echo -e ""
        echo -e "Please run sudo ./master-install.sh "
        exit 0
    else
        echo -e ""; clear; echo -e ""    										# clear Screen
        echo -e "Your are root or have issued \sudo to run this script... Let's began "
        echo -e "building your new system..."
        echo -e ""
        echo -e ""
        echo -e "You will be prompt to enter Elevated Rights to continue running this script"
        echo -e "Do you want to continue running this script? yes (Y) or no (N)"
        echo -e ""; clear; echo -e ""    										# clear Screen
    fi
sleep 2
}

#---------------------------------------------------------------------------------#
#  User Information                                                               #
#---------------------------------------------------------------------------------#
funcUserInfo () {
	echo -e ""; clear; echo -e ""    										# clear Screen
	echo -e "Enter Your Name: \"i.e. First Last\" "
	read NAME
	echo -e "Enter username: "
	read USERNAME
	echo -e ""; clear; echo -e ""
	echo -e "Your Name is: ${MENU}$NAME${RESET} "
	echo -e "Your Username: ${MENU}$USERNAME${RESET} "
	echo -e "This will be the name and user account used to configure applications, "
	echo -e "profiles and accounts. Do you want to continue using:"
	echo -e "${MENU}$NAME${RESET} and ${MENU}$USERNAME${RESET}? \"${RED_TEXT}Y${RESET}\" = Continue \"${RED_TEXT}N${RESET}\" = Re-Enter"
	read A
    if [[ "$A" == "Y"  ||  "$A" == "y"||  "$A" == "Yes" ||  "$A" == "yes"  ]] ;
    then
        echo -e ""
        clear
        echo -e ""
        echo -e "Great, I will be using ${MENU}$NAME${RESET} as your  name and"
        echo -e "${MENU}$USERNAME${RESET} as your account for all configurations..."
    else
        echo -e ""
        funcUserInfo
    fi
	sleep 2
}

funcWelcomeBanner () {
    echo -e ""; clear; echo -e ""    										# clear Screen
    echo -e ""
    echo -e "---------------------------------------------------------------------------------"
    echo -e "            ****** Welcome to the Finish Build Script ******                     "
    echo -e "---------------------------------------------------------------------------------"
    echo -e ""
    echo -e " Audio and Video"
    echo -e " Communication and News"
    echo -e " Productivity (Office)"
    echo -e " Games"
    echo -e " Graphics and Photography (GRAPHICS)"
    echo -e " Add-ons"
    echo -e " Developer Tools (PROGRAMMING)"
    echo -e " Education and Science (Education/Science)"
    echo -e " Utilities (System Tools/Accessories)"
    echo -e ""
    echo -e "---------------------------------------------------------------------------------"
    echo -e ""

sleep 2
echo -e ""; clear; echo -e ""
}

#=================================================================================#
# Script Begins Here 											                  			 #
#=================================================================================#
funcAreYouRoot																	# calling check for root function

echo -e "------------------------------------------------------------------"
echo -e " Creating Log files..."
echo -e "------------------------------------------------------------------"
touch $LOGFILE $ERRORFILE
exec 2> $ERRORFILE
exec > >(tee -i -a $LOGFILE)

#funcUserInfo    																# calling user information function

echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Pre-configuration settings..."
echo -e "------------------------------------------------------------------"
sh 0-prep-configurations-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Updating the repository database..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y && sudo apt-get full-upgrade -y && sudo apt-get dist-upgrade -y &&
sudo apt-get -f install -y && sudo apt-get autoremove


funcWelcomeBanner


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Core Utilities"
echo -e "------------------------------------------------------------------"
sh 1-install-core-utilities-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Audio and Video"
echo -e "------------------------------------------------------------------"
sh 2-install-av-apps-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Communications, Internet and Networking"
echo -e "------------------------------------------------------------------"
sh 3-install-cin-apps-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Office and Productivity"
echo -e "------------------------------------------------------------------"
sh 4-install-offprod-apps-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Graphics and Photography"
echo -e "------------------------------------------------------------------"
sh 5-install-graphics-apps-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Miscellaneous Applications"
echo -e "------------------------------------------------------------------"
sh 6-install-misc-apps-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " PPA Applications"
echo -e "------------------------------------------------------------------"
sh 7-install-ppa-apps-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Themes and Icons"
echo -e "------------------------------------------------------------------"
sh 8-install-themes-icons-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Snap Package Applications"
echo -e "------------------------------------------------------------------"
sh 9-install-snap-packages-v*.sh


#echo -e "Adding $USERNAME to the vboxusers group..."
#sudo adduser $USERNAME vboxusers


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Configuring Personal Settings"
echo -e "------------------------------------------------------------------"
sh app-configurations-v*.sh # $USERNAME


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Clean up, full maintenance"
echo -e " Force install -f"
echo -e "------------------------------------------------------------------"
sudo apt-get -f -y install


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Updating and Upgrading"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y && sudo apt-get upgrade -y


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Autoremove"
echo -e "------------------------------------------------------------------"
sudo apt-get autoremove -y


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Autoclean"
echo -e "------------------------------------------------------------------"
sudo apt-get autoclean -y


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " summary of what should have been installed"
echo -e "------------------------------------------------------------------"
sh 0-installation-summary-v*.sh


echo -e ""; clear; echo -e ""
echo -e "------------------------------------------------------------------"
echo -e " Testing Main Menu Function"
echo -e "------------------------------------------------------------------"
funcMainMenu


echo -e "------------------------------------------------------------------"
echo -e "|               system and application installed                 |"
echo -e "------------------------------------------------------------------"

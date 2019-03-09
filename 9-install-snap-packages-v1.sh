#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			9-install-snap-packages-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Snap Packages..."
echo -e "------------------------------------------------------------------"

#SnapCraft
dpkg -l | grep -qw build-essential || 
			sudo apt-get install -y build-essential 							# build-essential
dpkg -l | grep -qw snapd || sudo apt-get install -y snapd 				# snapd
dpkg -l | grep -qw snapcraft || sudo apt-get install -y snapcraft 	# snapcraft
mkdir -p ~/mysnaps
chown -R $USER:$USER ~/mysnaps


#Android Studio
echo -e "------------------------------------------------------------------"
echo -e " Installing Android-Studio (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install android-studio --classic


#Discord (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing Discord (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install discord --classic


#ffmpeg (latest) (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing ffmpeg (SNAP)" 
echo -e "------------------------------------------------------------------"
sudo apt-get remove -y ffmpeg
check_snap
sudo snap install ffmpeg --classic


#get-iplayer (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing get-iplayer (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install get-iplayer


#GIMP (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing GIMP (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install gimp --edge


#Google Desktop Player (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing Google Desktop Player (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install google-play-music-desktop-player


#Notepad-Plus-Plus is a free source code editor
echo -e "------------------------------------------------------------------"
echo -e " Installing Notepad-Plus-Plus (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install notepad-plus-plus

#OBS Studio (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing OBS Studio (SNAP)"	
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install obs-studio


#PyCharm EDU
echo -e "------------------------------------------------------------------"
echo -e " Installing Pycharm Educational (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install pycharm-educational --classic


#Pycharm Professional (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing Pycharm Professional"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install pycharm-professional


#Python IDE for Professional Developers (pay)
echo -e "------------------------------------------------------------------"
echo -e " Installing Python IDE for Professional Developers (SNAP)"
echo -e "------------------------------------------------------------------"
check_snap
##sudo snap install pycharm-community --classic


#Signal Messenger (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing Signal Messenger (SNAP)"	
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install signal-desktop


#Slack (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing Slack (SNAP)"	
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install slack --classic


#Telegram (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing Telegram (SNAP)"	
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install telegram-desktop
sudo snap install telegram-cli


#Whalebird (SNAP)
echo -e "------------------------------------------------------------------"
echo -e " Installing Whalebird (Mastodon and Pleroma client)"
echo -e "------------------------------------------------------------------"
check_snap
sudo snap install whalebird

echo -e "------------------------------------------------------------------"
echo -e "|                SNAP Packages Installed                         |"
echo -e "------------------------------------------------------------------"


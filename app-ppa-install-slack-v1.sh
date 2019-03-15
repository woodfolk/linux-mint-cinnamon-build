#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-slack-v1.sh
# Author:		Romano Woodfolk
# Created:		March 15, 2019
# Modified:		March 15, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://linuxconfig.org/how-to-install-slack-on-ubuntu-18-04-bionic-beaver-linux
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Slack..."
echo -e "------------------------------------------------------------------"

echo -e "------------------------------------------------------------------"
echo -e "| Updating Repositories                                          |"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e "| Install Prerequisites                                          |"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw gdebi-core || sudo apt-apt install -y gdebi-core 	# gdebi-core
dpkg -l | grep -qw wget || sudo apt-get install -y \wget 				# wget


echo -e "------------------------------------------------------------------"
echo -e "| Downloading Slack Package                                      |"
echo -e "------------------------------------------------------------------"
cd /tmp && wget -O ~/slack.deb "https://downloads.slack-edge.com/linux_releases/slack-desktop-3.1.0-amd64.deb"



echo -e "------------------------------------------------------------------"
echo -e "| Installing Slack                                               |"
echo -e "------------------------------------------------------------------"
sudo dpkg -i ~/slack.deb
sudo apt-get install -f


 
echo -e "------------------------------------------------------------------"
echo -e "|                       Slack Installed                          |"
echo -e "------------------------------------------------------------------"


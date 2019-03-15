#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-telegram-v1.sh
# Author:		Romano Woodfolk
# Created:		March 15, 2019
# Modified:		March 15, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://linuxconfig.org/how-to-install-telegram-on-ubuntu-18-04-bionic-beaver-linux
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Telegram..."
echo -e "------------------------------------------------------------------"


cd /tmp && wget -O- https://telegram.org/dl/desktop/linux | sudo tar xJ -C /opt/
sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram-desktop


echo -e "------------------------------------------------------------------"
echo -e "|               Telegram Installed		                          |"
echo -e "------------------------------------------------------------------"


#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-zsh-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website: 	    http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://github.com/robbyrussell/oh-my-zsh
# Install ZSH Z Shell
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing ZSH...                                               "
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw zsh || sudo apt-get install -y zsh						# zsh
dpkg -l | grep -qw git || sudo apt-get install -y git						# sabnzbdplus
dpkg -l | grep -qw \wget || sudo apt-get install -y \wget				# wget


echo -e "------------------------------------------------------------------"
echo -e " wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh "
echo -e ""
echo -e " changing the theme to random so you can enjoy tons of themes."
echo -e ""
echo -e " sudo sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"random\"/g' ~/.zshrc "
echo -e ""
echo -e " If above line does not work for some reason this is what you should "
echo -e " do to enjoy the many themes. Find the hidden .zshrc file and look for " 
echo -e " ZSH_THEME="robbyrussell" (CTRL+H to find hidden files) and change this"
echo -e " to ZSH_THEME="random" "
echo -e "------------------------------------------------------------------"
##wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
##sudo sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"random\"/g' ~/.zshrc


echo -e ""
echo -e ""
echo -e ""
echo -e "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo -e " This is for the script of ZSH - Colouring of your terminal"
echo -e " You do not get the chance to type your password"
echo -e " Retype this line again and fill in your own username"
echo -e " sudo chsh username -s /bin/zsh"
echo -e "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo -e ""
echo -e ""
echo -e " Log off or reboot to see the change in your terminal".
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e "|                    ZSH installed                               |"
echo -e "------------------------------------------------------------------"

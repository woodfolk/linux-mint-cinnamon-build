#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-atom-v1.sh
# Author:		Romano Woodfolk
# Created:		February 01, 2019
# Modified:		March 06, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1  	 #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Atom
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Atom..."
echo -e "------------------------------------------------------------------"
echo -e ""

# downloading atom
echo -e "------------------------------------------------------------------"
echo -e "..downloading atom..."
echo -e "------------------------------------------------------------------"
wget -O $tmp_dir/atom-amd64.deb https://atom.io/download/deb

# installing atom
echo -e "------------------------------------------------------------------"
echo -e"..installing Atom..."
echo -e "------------------------------------------------------------------"
sudo dpkg -i $tmp_dir/atom-amd64.deb
sudo apt-get install -f

apm install atom-html-preview


echo -e "------------------------------------------------------------------"
echo -e "|                      Atom installed                            |"
echo -e "------------------------------------------------------------------"

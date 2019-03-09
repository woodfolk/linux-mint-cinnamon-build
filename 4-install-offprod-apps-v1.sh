#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			4-install-offprod-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		January 25, 2019
# Modified:		February 27, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Office and Productivity Applications..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y

dpkg -l | grep -qw calibre || sudo apt-get install -y calibre  		# calibre
dpkg -l | grep -qw glabels || sudo apt-get install -y glabels  		# glabels
dpkg -l | grep -qw gnucash || sudo apt-get install -y gnucash  		# gnucash
dpkg -l | grep -qw gnucash-doc ||
			sudo apt-get install -y gnucash-doc  								# gnucash-doc
dpkg -l | grep -qw gramps || sudo apt-get install -y gramps  			# gramps
dpkg -l | grep -qw homebank || sudo apt-get install -y homebank 		# homebank
dpkg -l | grep	-qw planner || sudo apt-get install -y planner			# planner
dpkg -l | grep	-qw vym || sudo apt-get install -y vym						# vym (View Your Mind)


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing LibreOffice..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw libreoffice ||
			sudo apt-get install -y libreoffice          					# LibreOffice
dpkg -l | grep -qw libreoffice-base ||
			sudo apt-get install -y libreoffice-base							# LibreOffice Base
dpkg -l | grep -qw libreoffice-calc ||
			sudo apt-get install -y libreoffice-calc							# LibreOffice Calc
dpkg -l | grep -qw libreoffice-draw ||
			sudo apt-get install -y libreoffice-draw							# LibreOffice draw**
dpkg -l | grep -qw libreoffice-impress ||
			sudo apt-get install -y libreoffice-impress						# LibreOffice Impress
dpkg -l | grep -qw libreoffice-math ||
			sudo apt-get install -y libreoffice-math							# LibreOffice Math
dpkg -l | grep -qw libreoffice-writer ||
			sudo apt-get install -y libreoffice-writer						# LibreOffice Writer


echo -e "------------------------------------------------------------------"
echo -e "|          office and productivity applications installed        |"
echo -e "------------------------------------------------------------------"

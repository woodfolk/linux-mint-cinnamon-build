#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-arc-flatabulous-theme-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e "------------------------------------------------------------------"
echo -e " Creating Log files..."
echo -e "------------------------------------------------------------------"
# Defining Script Variables 
	SCRPTNAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")" 
	SCRPTNOW=`date +%Y%m%d%H%M%S`													# Current Date & Time Suffix
	SCRPTLOGFILE="$SCRPTNAME"_instlog_"$SCRPTNOW".log						# Script Log File
	SCRPTERRORFILE="$SCRPTNAME"_errlog_"$SCRPTNOW".log						# Error Log File
# Creating Log Files
	touch $SCRPTERRORFILE
	exec 2> $SCRPTERRORFILE
echo -e "------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "------------------------------------------------------------------"


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing arc flatabulous..."
echo -e "------------------------------------------------------------------"

#https://github.com/andreisergiu98/arc-flatabulous-theme

rm -rf /tmp/arc-flatabulous-theme


dpkg -l | grep -qw autoconf || sudo apt-get install -y autoconf 		# autoconf
dpkg -l | grep -qw automake || sudo apt-get install -y automake 		# automake
dpkg -l | grep -qw \pkg-config || 
			sudo apt-get install -y \pkg-config 								# pkg-config
dpkg -l | grep -qw libgtk-3-0 || sudo apt-get install -y libgtk-3-0 	# libgtk-3-0
dpkg -l | grep -qw libgtk-3-dev || 
			sudo apt-get install -y libgtk-3-dev 								# libgtk-3-dev
sudo apt-get -f install


git clone https://github.com/andreisergiu98/arc-flatabulous-theme  /tmp/arc-flatabulous-theme
cd /tmp/arc-flatabulous-theme
./autogen.sh --prefix=/usr
sudo make install
#sudo make uninstall

# make sure you have the arc theme installed
# linux mint 18.1 has 3.2 cinnamon
# we need an updated cinnammon.css otherwise the look is not the way it was intended
sudo mv /usr/share/themes/Arc-Flatabulous/cinnamon/cinnamon.css /usr/share/themes/Arc-Flatabulous/cinnamon/cinnamon.css.backup

sudo cp /usr/share/themes/Arc/cinnamon/cinnamon.css /usr/share/themes/Arc-Flatabulous/cinnamon/cinnamon.css

sudo mv /usr/share/themes/Arc-Flatabulous-Dark/cinnamon/cinnamon.css /usr/share/themes/Arc-Flatabulous-Dark/cinnamon/cinnamon.css.backup

sudo cp /usr/share/themes/Arc-Dark/cinnamon/cinnamon.css /usr/share/themes/Arc-Flatabulous-Dark/cinnamon/cinnamon.css


# cleanup
rm -rf /tmp/arc-flatabulous-theme

echo -e "------------------------------------------------------------------"
echo -e "|               arc flatabulous installed                        |"
echo -e "------------------------------------------------------------------"

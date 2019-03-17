#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-theme-arc-colora-collection-3.6.v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com
###################################################################################
#
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.
# MMm----::-://////////////oymNMd+`
# MMd      /++                -sNMd:
# MMNso/`  dMM    `.::-. .-::.` .hMN:
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM
#     NMm  dMM  -MMm  `MMM   dMM. dMM
#     NMm  dMM  -MMm  `MMM   dMM. dMM
#     NMm  dMM  .mmd  `mmm   yMM. dMM
#     NMm  dMM`  ..`   ...   ydm. dMM
#     hMM- +MMd/-------...-:sdds  dMM
#     -NMm- :hNMNNNmdddddddddy/`  dMM
#      -dMNs-``-::::-------.``    dMM
#       `/dMNmy+/:-------------:/yMMM
#          ./ydNMMMMMMMMMMMMMMMMMMMMM
#             \.MMMMMMMMMMMMMMMMMMM
#
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at
# http://erikdubois.be/category/linux/aurora-conky/
#
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Super Ultra Flat Numix Remix
# Colourfull and playfull icons
# https://github.com/erikdubois/Super-Ultra-Flat-Numix-Remix
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#---------------------------------------------------------------------------------#
#
# if there is no hidden folder then make one
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


[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"


rm -rf /tmp/Arc-Theme-Colora-Collection
git clone https://github.com/erikdubois/Arc-Theme-Colora-Collection /tmp/Arc-Theme-Colora-Collection
find /tmp/Arc-Theme-Colora-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Arc-Theme-Colora-Collection/Cinnamon\ 3.6/* ~/.themes/
rm -rf /tmp/Arc-Theme-Colora-Collection

echo -e "------------------------------------------------------------------"
echo -e "|                 arc colora themes installed                    |"
echo -e "------------------------------------------------------------------"


#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			6-install-misc-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		January 25, 2019
# Modified:		March 01, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Developer Tools..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw anjuta || sudo apt-get install -y anjuta   			# anjuta
dpkg -l | grep -qw arduino || sudo apt-get install -y arduino   		# arduino
dpkg -l | grep -qw arduino-mk || sudo apt-get install -y arduino-mk  # arduino-mk
dpkg -l | grep -qw bluefish || sudo apt-get install -y bluefish   	# bluefish
dpkg -l | grep -qw kicad || sudo apt-get install -y kicad   			# kicad
dpkg -l | grep -qw fritzing || sudo apt-get install -y fritzing   	# fritzing
dpkg -l | grep -qw fritzing-parts ||
			sudo apt-get install -y fritzing-parts   							# fritzing-parts
dpkg -l | grep -qw geany || sudo apt-get install -y geany   			# geany


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Hamradio..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw chirp || sudo apt-get install -y chirp    			# chirp
dpkg -l | grep -qw gnuradio || sudo apt-get install -y gnuradio   	# gnuradio
dpkg -l | grep -qw gqrx-sdr || sudo apt-get install -y gqrx-sdr   	# gqrx-sdr


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Educational and Science Applications..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw stellarium || sudo apt-get install -y stellarium  # stellarium


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Utilities and System Tools..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw convertall || sudo apt-get install -y convertall  # convertall
dpkg -l | grep -gip || sudo apt-get install -y gip    					# gip
dpkg -l | grep -qw keepassxc || sudo apt-get install -y keepassxc    # keepassxc
dpkg -l | grep -qw gnome-boxes ||
			sudo apt-get install -y gnome-boxes    							# gnome-boxes
dpkg -l | grep -qw gnome-nettool ||
			sudo apt-get install -y gnome-nettool   							# gnome-nettool

dpkg -l | grep -qw putty || sudo apt-get install -y putty   			# putty
dpkg -l | grep -qw putty-tools ||
			sudo apt-get install -y putty-tools    							# putty-tools
dpkg -l | grep -qw redshift || sudo apt-get install -y redshift    	# redshift
dpkg -l | grep -qw screen || sudo apt-get install -y screen				# screen
dpkg -l | grep -qw sirikali || sudo apt-get install -y sirikali    	# sirikali
dpkg -l | grep -qw terminator || sudo apt-get install -y terminator  # terminator
dpkg -l | grep -qw tilda || sudo apt-get install -y tilda   			# tilda
dpkg -l | grep -qw tilix || sudo apt-get install -y tilix   			# tilix
dpkg -l | grep -qw upnp-router-control ||
			sudo apt-get install -y upnp-router-control    					# upnp-router-control
##dpkg -l | grep -qw virtualbox || 
##			sudo apt-get install -y virtualbox									# virtualbox
##dpkg -l | grep -qw virtualbox-ext-pack ||
##			sudo apt-get install -y virtualbox-ext-pack   					# virtualbox-ext-pack
##dpkg -l | grep -qw virtualbox-guest-additions-iso ||
##			sudo apt-get install -y virtualbox-guest-additions-iso		# virtualbox-guest-additions-iso
dpkg -l | grep -qw vde2 || sudo apt-get install -y vde2					# vde2


# Adding VirtualBox users to vboxusers group
##echo -e ""; clear; echo -e ""														# clear Screen
##echo -e "------------------------------------------------------------------"
##echo -e "..adding virtualbox users to the vboxusers group..."
##echo -e "------------------------------------------------------------------"
##sudo adduser $USER vboxusers


dpkg -l | grep -qw vim || sudo apt-get install -y vim						# vim


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Miscellaneous Applications..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw libavcodec-extra ||
			sudo apt-get install -y libavcodec-extra   						# libavcodec-extra

dpkg -l | grep -qw catfish || sudo apt-get install -y catfish    		# catfish
dpkg -l | grep -qw clamav || sudo apt-get install -y clamav    		# clamav
dpkg -l | grep -qw dropbox || sudo apt-get install -y dropbox    		# dropbox
#dpkg -l | grep -qw caja-dropbox ||
#			sudo apt-get install -y caja-dropbox   							# caja-dropbox
#dpkg -l | grep -qw nautilus-dropbox ||
#			sudo apt-get install -y nautilus-dropbox   						# nautilus-dropbox

dpkg -l | grep -qw git || sudo apt-get install -y git   					# git
dpkg -l | grep -qw git-core || sudo apt-get install -y git-core   	# git-core
dpkg -l | grep -qw git-doc || sudo apt-get install -y git-doc   		# git-doc

dpkg -l | grep -qw gpa || sudo apt-get install -y gpa    				# gpa
dpkg -l | grep -qw gparted || sudo apt-get install -y gparted    		# gparted
dpkg -l | grep -qw grsync || sudo apt-get install -y grsync    		# grsync
dpkg -l | grep -qw gufw || sudo apt-get install -y gufw   				# gufw

dpkg -l | grep -qw imagemagick ||
			sudo apt-get install -y imagemagick    							# imagemagick

dpkg -l | grep -qw imagemagick-common ||
			sudo apt-get install -y imagemagick-common  						# imagemagick-common

dpkg -l | grep -qw mc || sudo apt-get install -y mc    					# mc (Midnight Commander)

dpkg -l | grep -qw ntfs-3g || sudo apt-get install -y ntfs-3g    		# ntfs-3g
dpkg -l | grep -qw ntfs-config ||
			sudo apt-get install -y ntfs-config    							# ntfs-config

dpkg -l | grep -qw openconnect ||
			sudo apt-get install -y openconnect   								# openconnect
dpkg -l | grep -qw network-manager-openconnect ||
			sudo apt-get install -y network-manager-openconnect   		# network-manager-openconnect
dpkg -l | grep -qw network-manager-openconnect-gnome ||
			sudo apt-get install -y network-manager-openconnect-gnome   # network-manager-openconnect-gnome


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Games..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw gnome-mahjongg ||
			sudo apt-get install -y gnome-mahjongg								# GNOME Mahjongg
dpkg -l | grep -qw gnome-mines ||
			sudo apt-get install -y gnome-mines            					# GNOME Mines
dpkg -l | grep -qw gnome-sudoku ||
			sudo apt-get install -y gnome-sudoku								# GNOME Sudoku


echo -e  "------------------------------------------------------------------"
echo -e  "|             miscellaneous applications installed               |"
echo -e  "------------------------------------------------------------------"

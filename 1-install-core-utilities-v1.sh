#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			1-install-core-utilities-v1.sh
# Author:		Romano Woodfolk
# Created:		January 24, 2019
# Modified:		March 14, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "...installing Package Management Tools"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Installing package management and installation utilities..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw curl || sudo apt-get install -y curl				   # curl
dpkg -l | grep -qw git || sudo apt-get install -y git					   # git
dpkg -l | grep -qw \wget || sudo apt-get install -y \wget				# wget

dpkg -l | grep -qw flatpak || sudo apt-get install -y flatpak			# flatpak
dpkg -l | grep -qw gnome-software-plugin-flatpak ||
			 sudo apt-get install -y gnome-software-plugin-flatpak		# flatpak
dpkg -l | grep -qw gdebi || sudo apt-get install -y gdebi				# gdebi
dpkg -l | grep -qw python-pip || sudo apt-get install -y python-pip	# python-pip
dpkg -l | grep -qw python3-pip || 
			sudo apt-get install -y python3-pip 								# python3-pip
dpkg -l | grep -qw snapd || sudo apt-get install -y snapd				# snapd
dpkg -l | grep -qw synaptic || sudo apt-get install -y synaptic		# synaptic


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Configuring Flatpak  for Flathub..."
echo -e "------------------------------------------------------------------"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Utilities and System Tools..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y \gcc \make linux-headers-$(uname -r) dkms

dpkg -l | grep -qw arj || sudo apt-get install -y arj						# arj
dpkg -l | grep -qw cabextract || sudo apt-get install -y cabextract	# cabextract
dpkg -l | grep -qw dconf-cli || sudo apt-get install -y dconf-cli		# dconf-cli

dpkg -l | grep -qw dconf-editor ||
			sudo apt-get install -y dconf-editor								# dconf-editor

dpkg -l | grep -qw file-roller ||
			sudo apt-get install -y file-roller									# file-roller

dpkg -l | grep -qw gedit || sudo apt-get install -y gedit				# gedit
dpkg -l | grep -qw gparted || sudo apt-get install -y gparted			# gparted
dpkg -l | grep -qw grsync || sudo apt-get install -y grsync				# grsync
dpkg -l | grep -qw gufw || sudo apt-get install -y gufw					# gufw
dpkg -l | grep -qw hardinfo || sudo apt-get install -y hardinfo		# hardinfo
##dpkg -l | grep -qw latex-beamer ||  
##			sudo apt-get install -y latex-beamer    							# latex-beamer
dpkg -l | grep -qw meld || sudo apt-get install -y meld					# meld
dpkg -l | grep -qw mpack || sudo apt-get install -y mpack				# mpack
dpkg -l | grep -qw p7zip-rar || sudo apt-get install -y p7zip-rar		# p7zip-rar
dpkg -l | grep -qw p7zip-full || sudo apt-get install -y p7zip-full	# p7zip-full
dpkg -l | grep -qw ppa-purge || sudo apt-get install -y ppa-purge		# ppa-purge
dpkg -l | grep -qw rar || sudo apt-get install -y rar						# rar
dpkg -l | grep -qw unace || sudo apt-get install -y unace				# unace
dpkg -l | grep -qw unrar || sudo apt-get install -y unrar				# unrar
dpkg -l | grep -qw uudeview || sudo apt-get install -y uudeview		# uudeview

dpkg -l | grep -qw screenfetch ||
			sudo apt-get install -y screenfetch									# screenfetch

dpkg -l | grep -qw screenruler ||
			sudo apt-get install -y screenruler									# screenruler

dpkg -l | grep -qw sharutils || sudo apt-get install -y sharutils		# sharutils
dpkg -l | grep -qw synapse || sudo apt-get install -y synapse			# synapse

dpkg -l | grep -qw texmaker ||  sudo apt-get install -y texmaker     # texmaker
##dpkg -l | grep -qw unetbootin || 
##			sudo apt-get install -y unetbootin									# unetbootin
dpkg -l | grep -qw uudeview || sudo apt-get install -y uudeview		# uudeview
#dpkg -l | grep -qw wicd || sudo apt-get install -y wicd					# wicd
dpkg -l | grep -qw xrdp || sudo apt-get install -y xrdp					# xrdp
dpkg -l | grep -qw \zip || sudo apt-get install -y \zip					# zip
dpkg -l | grep -qw \unzip || sudo apt-get install -y \unzip				# unzip

dpkg -l | grep -qw openconnect ||
			sudo apt-get install -y openconnect									# openconnect

dpkg -l | grep -qw network-manager-openconnect ||
			sudo apt-get install -y network-manager-openconnect			# network-manager-openconnect

dpkg -l | grep -qw network-manager-openconnect-gnome ||
			sudo apt-get install -y network-manager-openconnect-gnome	# network-manager-openconnect-gnome


echo -e "------------------------------------------------------------------"
echo -e "|                      core utilities installed                  |"
echo -e "------------------------------------------------------------------"


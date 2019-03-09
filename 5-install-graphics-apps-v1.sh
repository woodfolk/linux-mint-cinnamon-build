#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			5-install-graphics-apps-v1.sh
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
echo -e "..installing Graphics and Photography Applications..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw blender || sudo apt-get install -y blender   		# blender
dpkg -l | grep -qw darktable || sudo apt-get install -y darktable   	# darktable
dpkg -l | grep -qw dia || sudo apt-get install -y dia   					# dia
dpkg -l | grep -qw gimp || sudo apt-get install -y gimp   				# gimp
dpkg -l | grep -qw gimp-cbmplugs ||
			sudo apt-get install -y gimp-cbmplugs   							# gimp-cbmplugs
dpkg -l | grep -qw gimp-data-extras ||
			sudo apt-get install -y gimp-data-extras  						# gimp-data-extras
dpkg -l | grep -qw gimp-dcraw || sudo apt-get install -y gimp-dcraw  # gimp-dcraw
dpkg -l | grep -qw gimp-dds || sudo apt-get install -y gimp-dds   	# gimp-dds
dpkg -l | grep -qw gimp-gap || sudo apt-get install -y gimp-gap   	# gimp-gap
dpkg -l | grep -qw gimp-gluas || sudo apt-get install -y gimp-gluas  # gimp-gluas
dpkg -l | grep -qw gimp-gmic || sudo apt-get install -y gimp-gmic  	# gimp-gmic
dpkg -l | grep -qw gimp-gutenprint ||
			sudo apt-get install -y gimp-gutenprint   						# gimp-gutenprint
dpkg -l | grep -qw gimp-help-en ||
			sudo apt-get install -y gimp-help-en   							# gimp-help-en
dpkg -l | grep -qw gimp-lensfun ||
			sudo apt-get install -y gimp-lensfun   							# gimp-lensfun
dpkg -l | grep -qw gimp-normalmap ||
			sudo apt-get install -y gimp-normalmap  							# gimp-normalmap
dpkg -l | grep -qw gimp-plugin-registry ||
			sudo apt-get install -y gimp-plugin-registry   					# gimp-plugin-registry
dpkg -l | grep -qw gimp-texturize ||
			sudo apt-get install -y gimp-texturize   							# gimp-texturize
dpkg -l | grep -qw gimp-ufraw ||
			sudo apt-get install -y gimp-ufraw   								# gimp-ufraw

dpkg -l | grep -qw gpick || sudo apt-get install -y gpick  				# gpick
dpkg -l | grep -qw inkscape || sudo apt-get install -y inkscape   	# inkscape
dpkg -l | grep -qw inkscape-open-symbols ||
			sudo apt-get install -y inkscape-open-symbols   				# inkscape-open-symbols
dpkg -l | grep -qw krita || sudo apt-get install -y krita   			# krita
dpkg -l | grep -qw librecad || sudo apt-get install -y librecad   	# librecad
dpkg -l | grep -qw scribus || sudo apt-get install -y scribus  		# scribus
dpkg -l | grep -qw scribus-doc ||
			sudo apt-get install -y scribus-doc   								# scribus-doc
dpkg -l | grep -qw scribus-template ||
			sudo apt-get install -y scribus-template   						# scribus-template
dpkg -l | grep -qw shotwell || sudo apt-get install -y shotwell		# shotwell
dpkg -l | grep -qw sweethome3d ||
			sudo apt-get install -y sweethome3d  								# sweethome3d

dpkg -l | grep -qw calibre || sudo apt-get install -y calibre			# calibre - E-book Viewer
dpkg -l | grep -qw evince || sudo apt-get install -y evince          # Document Viewer - Evince
#dpkg -l | grep -qw libreoffice-draw ||
#			sudo apt-get install -y libreoffice-draw 							# LibreOffice Draw
dpkg -l | grep -qw shotwell || sudo apt-get install -y shotwell		# Shotwell
#dpkg -l | grep -qw simple-scan ||
#			sudo apt-get install -y simple-scan									# Simple Scan


echo -e "------------------------------------------------------------------"
echo -e "|        graphics and photography applications installed         |"
echo -e "------------------------------------------------------------------"

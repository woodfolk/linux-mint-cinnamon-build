#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			2-install-av-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		January 25, 2019
# Modified:		March 01, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "...installing audio & video applications"
echo -e "------------------------------------------------------------------"
sudo apt-get update -y

dpkg -l | grep -qw mint-meta-codecs || 
			sudo apt-get install -y mint-meta-codecs 							# mint-meta-codecs

dpkg -l | grep -qw audacity || sudo apt-get install -y audacity		# audacity
dpkg -l | grep -qw cheese || sudo apt-get install -y cheese				# cheese
dpkg -l | grep -qw dvdauthor || sudo apt-get install -y dvdauthor		# dvdauthor
dpkg -l | grep -qw dvdrip || sudo apt-get install -y dvdrip			   # dvdrip
dpkg -l | grep -qw easytag || sudo apt-get install -y easytag			# easytag
dpkg -l | grep -qw ffmpeg || sudo apt-get install -y ffmpeg				# ffmpeg
dpkg -l | grep -qw gtkpod || sudo apt-get install -y gtkpod				# gtkpod
dpkg -l | grep -qw guvcview || sudo apt-get install -y guvcview		# guvcview
dpkg -l | grep -qw libgsl2 || sudo apt-get install -y libgsl2			# libgsl2

dpkg -l | grep -qw libguvcview ||
			sudo apt-get install -y libguvcview							      # libguvcview

dpkg -l | grep -qw handbrake || sudo apt-get install -y handbrake		# handbrake
dpkg -l | grep -qw kazam || sudo apt-get install -y kazam				# kazam
dpkg -l | grep -qw kdenlive || sudo apt-get install -y kdenlive		# kdenlive
dpkg -l | grep -qw kino || sudo apt-get install -y kino					# kino
dpkg -l | grep -qw libgsl2 || sudo apt-get install -y libgsl2			# libgsl2

dpkg -l | grep -qw libguvcview ||
			sudo apt-get install -y libguvcview							      # libguvcview

#dpkg -l | grep -qw mplayer || sudo apt-get install -y mplayer			# mplayer
#
#dpkg -l | grep -qw mplayer-gui ||
#			sudo apt-get install -y mplayer-gui									# mplayer-gui
#
#dpkg -l | grep -qw mplayer-skins ||
#			sudo apt-get install -y mplayer-skins								# mplayer-skins

dpkg -l | grep -qw obs-studio || sudo apt-get install -y obs-studio	# obs-studio
dpkg -l | grep -qw openshot || sudo apt-get install -y openshot		# openshot
dpkg -l | grep -qw shutter || sudo apt-get install -y shutter			# shutter

dpkg -l | grep -qw simplescreenrecorder ||
			sudo apt-get install -y simplescreenrecorder						# simplescreenrecorder

dpkg -l | grep -qw smplayer || sudo apt-get install -y smplayer		# smplayer

dpkg -l | grep -qw smplayer-themes ||
			sudo apt-get install -y smplayer-themes							# smplayer-themes

dpkg -l | grep -qw sound-juicer ||
			sudo apt-get install -y sound-juicer								# sound-juicer

dpkg -l | grep -qw telegram-desktop ||
			sudo apt-get install -y telegram-desktop							# telegram-desktop

dpkg -l | grep -qw telegram-cli ||
			sudo apt-get install -y telegram-cli								# telegram-desktop

dpkg -l | grep -qw xmms2-plugin-all ||
			sudo apt-get install -y xmms2-plugin-all							# xmms2-plugin-all


echo -e ""; clear; echo "";
echo -e "------------------------------------------------------------------"
echo -e "..installing GStreamer plugins and libraries..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw frei0r-plugins || 
			sudo apt-get install -y frei0r-plugins								# frei0r-plugins
dpkg -l | grep -qw libgstreamer1.0-0 ||
			sudo apt-get install -y libgstreamer1.0-0 						# GStreamer library
dpkg -l | grep -qw gstreamer1.0-plugins-base ||
			sudo apt-get install -y gstreamer1.0-plugins-base				# GStreamer plugins from the "base" set
dpkg -l | grep -qw gstreamer1.0-plugins-good ||
			sudo apt-get install -y gstreamer1.0-plugins-good				# GStreamer plugins from the "good" set
dpkg -l | grep -qw gstreamer1.0-plugins-bad ||
			sudo apt-get install -y gstreamer1.0-plugins-bad		   	# GStreamer plugins from the "bad" set
dpkg -l | grep -qw gstreamer1.0-plugins-ugly ||
			sudo apt-get install -y gstreamer1.0-plugins-ugly				# GStreamer plugins from the "ugly" set
dpkg -l | grep -qw gstreamer1.0-libav ||
			sudo apt-get install -y gstreamer1.0-libav						# libav plugin for GStreamer"
dpkg -l | grep -qw gstreamer1.0-gtk3 ||
			sudo apt-get install -y gstreamer1.0-gtk3 						# GStreamer plugin for GTK+3
dpkg -l | grep -qw gstreamer1.0-\x ||
			sudo apt-get install -y gstreamer1.0-\x							# GStreamer plugins for X11 and Pango
#dpkg -l | grep -qw gstreamer1.0-pulseaudio ||
#			sudo apt-get install -y gstreamer1.0-pulseaudio				   # GStreamer plugin for PulseAudio
dpkg -l | grep -qw gstreamer1.0-gl ||
			sudo apt-get install -y gstreamer1.0-gl							# GStreamer plugins for GL
dpkg -l | grep -qw gstreamer1.0-alsa ||
			sudo apt-get install -y gstreamer1.0-alsa							# GStreamer plugin for ALSA
dpkg -l | grep -qw gstreamer1.0-doc ||
			sudo apt-get install -y gstreamer1.0-doc 							# GStreamer documentation
dpkg -l | grep -qw gstreamer1.0-tools ||
			sudo apt-get install -y gstreamer1.0-tools						# GStreamer tools
dpkg -l | grep -qw libavcodec-extra ||
			sudo apt-get install -y libavcodec-extra   						# Enable DVD And Copy-Right Videos Support
dpkg -l | grep -qw libavcodec-extra57  ||
			sudo apt-get install -y libavcodec-extra57						# Enable DVD And Copy-Right Videos Support
#dpkg -l | grep -qw ubuntu-restricted-extras ||
#			sudo apt-get install -y ubuntu-restricted-extras 				# Enable DVD And Copy-Right Videos Support
dpkg -l | grep -qw libdvdnav4 ||
			sudo apt-get install -y libdvdnav4 									# Enable DVD And Copy-Right Videos Support
dpkg -l | grep -qw libdvdread4 ||
			sudo apt-get install -y libdvdread4 								# libdvdread4
#dpkg -l | grep -qw libdvdcss2 ||
#			sudo apt-get install -y libdvdcss2									# libdvdcss2


echo -e "------------------------------------------------------------------"
echo -e "|             audio & video applications installed               |"
echo -e "------------------------------------------------------------------"

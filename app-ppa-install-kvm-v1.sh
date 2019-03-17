#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-kvm-v1.sh
# Author:		Romano Woodfolk
# Created:		January 29, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1  	 #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install KVM
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
echo -e " Installing KVM..."
echo -e "------------------------------------------------------------------"
echo -e ""


echo -e "------------------------------------------------------------------"
echo -e " Updating repository database..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing KVM..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw qemu-kvm || sudo apt-get install -y qemu-kvm		# qemu-kvm 
dpkg -l | grep -qw libvirt-bin || 
			sudo apt-get install -y libvirt-bin									# libvirt-bin 
dpkg -l | grep -qw bridge-utils || 
			sudo apt-get install -y bridge-utils								# bridge-utils 
dpkg -l | grep -qw virt-manager || 
			sudo apt-get install -y virt-manager								# virt-manager 
dpkg -l | grep -qw virtinst || sudo apt-get install -y virtinst		# virtinst 
dpkg -l | grep -qw virt-viewer || 
			sudo apt-get install -y virt-viewer									# virt-viewer 
dpkg -l | grep -qw firewalld || sudo apt-get install -y firewalld		# firewalld 
dpkg -l | grep -qw ebtables || sudo apt-get install -y ebtables		# ebtables 
dpkg -l | grep -qw iptables || sudo apt-get install -y iptables		# iptables 
dpkg -l | grep -qw qemu || sudo apt-get install -y qemu					# qemu 
dpkg -l | grep -qw libspice-client-gtk-3.0-dev || 
			sudo apt-get install -y libspice-client-gtk-3.0-dev			# libspice-client-gtk-3.0-dev  

sleep 1


echo -e "------------------------------------------------------------------"
echo -e "Adding Group and User..."
echo -e "------------------------------------------------------------------"
sudo addgroup libvirtd
sudo adduser $USER libvirtd
sudo systemctl restart libvirtd

echo -e "------------------------------------------------------------------"
echo -e "|                        KVM installed                           |"
echo -e "------------------------------------------------------------------"

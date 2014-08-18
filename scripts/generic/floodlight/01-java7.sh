#!/bin/bash

# This script must be ran as root

## Get appropriate JDK version
if grep -q 6.* /etc/debian_version; then
	echo "Debian 6 detected"
	echo "Adding java repo's"
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list

	echo "Adding Keys"
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

	echo "Update"
	apt-get update

	echo "Accepting oracle licences.."
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

	echo "Install"
	apt-get install -y oracle-java7-installer
elif grep -q 7.* /etc/debian_version; then
	#statements
	echo "Debian 7 detected"
	echo "Update"
	apt-get update
	echo "Install openjdk-7-jdk"
	apt-get install -y openjdk-7-jdk
else
	echo "unknown debian version"
	return -1;
fi
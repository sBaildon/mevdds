#!/bin/bash

# This script must be ran as root

## Get appropriate JDK version
if grep -q 6.* /etc/debian_version; then
	echo "[Debian 6 detected]" | tee -a /var/log/mevdds/java.log
	echo "[Adding java repo's]" | tee -a /var/log/mevdds/java.log
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list >> /var/log/mevdds/java.log
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list >> /var/log/mevdds/java.log

	echo "[Adding Keys]" | tee -a /var/log/mevdds/java.log
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 >> /var/log/mevdds/java.log

	echo "[Update]" | tee -a /var/log/mevdds/java.log
	apt-get update

	echo "[Accepting oracle licences..]" | tee -a /var/log/mevdds/java.log
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

	echo "[Install]" | tee -a /var/log/mevdds/java.log
	apt-get install -y oracle-java7-installer >> /var/log/mevdds/java.log

elif grep -q 7.* /etc/debian_version; then
	echo "[Debian 7 detected]" | tee -a /var/log/mevdds/java.log

	#echo "[Update]" | tee -a /var/log/mevdds/java.log
	#apt-get update >> /dev/null

	echo "[Install openjdk-7-jdk]" | tee -a /var/log/mevdds/java.log
	apt-get install -y openjdk-7-jdk >> /var/log/mevdds/java.log
else
	echo "[ERROR] Unknown Debian version" | tee -a /var/log/mevdds/java.log
	return -1;
fi
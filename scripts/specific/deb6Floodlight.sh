#!/bin/bash

# This script must be ran as root

## Get appropriate JDK version
echo "Adding java repo's"
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list

echo "Adding Keys"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

echo "Update"
apt-get update

echo "Accepting oracle licences.."
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

echo "Install"
apt-get install -y oracle-java7-installer

## install ant unzip
echo "Install ant + unzip"
apt-get install -y ant unzip
## wget zip file
echo "wget floodlight v0.90"
wget https://github.com/floodlight/floodlight/archive/v0.90.zip

## unzip floodlight
echo "unzip floodlight"
unzip v0.90.zip

## cd into floodlight
echo "cd floodlight-0.90"
cd floodlight-0.90

## compile floodlight
echo "ant"
ant
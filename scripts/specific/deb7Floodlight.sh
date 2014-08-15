#!/bin/bash

# This script must be ran as root

## Get appropriate JDK version
echo "Update"
apt-get update
echo "Install openjdk-7-jdk"
apt-get install -y openjdk-7-jdk

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
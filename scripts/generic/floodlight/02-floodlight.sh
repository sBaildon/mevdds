#!/bin/bash

# This script must be ran as root

## cd into appropriate dir (should be /root)
cd ~/

## install ant unzip
echo "[Install ant + unzip]" | tee -a /var/log/mevdds/floodlight.log
apt-get install -y ant unzip >> /var/log/mevdds/floodlight.log

## wget zip file
echo "wget floodlight v0.90"
wget https://github.com/floodlight/floodlight/archive/v0.90.zip -a /var/log/mevdds/floodlight.log

## unzip floodlight
echo "[unzip floodlight]" | tee -a /var/log/mevdds/floodlight.log
unzip v0.90.zip >> /var/log/mevdds/floodlight.log

cd floodlight-0.90

## compile floodlight
echo "[Compililing with ant]" | tee -a /var/log/mevdds/floodlight.log
ant >> /var/log/mevdds/floodlight.log
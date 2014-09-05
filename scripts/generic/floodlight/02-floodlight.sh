#!/bin/bash

# This script must be ran as root

## cd into appropriate dir (should be /root)
cd ~/

## install ant unzip
echo "[Install ant + unzip]" | tee -a /var/log/mevdds/floodlight.log
apt-get install -y ant unzip >> /var/log/mevdds/floodlight.log

## wget zip file
echo "wget floodlight v0.90"
wget https://github.com/sBaildon/floodlight/archive/master.zip -a /var/log/mevdds/floodlight.log

## unzip floodlight
echo "[unzip floodlight]" | tee -a /var/log/mevdds/floodlight.log
unzip master.zip >> /var/log/mevdds/floodlight.log

cd floodlight-master

## compile floodlight
echo "[Compililing with ant]" | tee -a /var/log/mevdds/floodlight.log
ant >> /var/log/mevdds/floodlight.log

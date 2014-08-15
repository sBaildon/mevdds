#!/bin/bash

sudo apt-get update
sudo apt-get install git -y
git clone https://github.com/broadbent/mevdds.git -n
cd mevdds/
git checkout master -- tools/

cd ~

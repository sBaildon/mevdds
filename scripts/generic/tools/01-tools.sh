#!/bin/bash

git clone https://github.com/broadbent/mevdds.git -n tmp
cd tmp/
git checkout master -- tools/
mv tools ~
rm -rf ../tmp

cd ~

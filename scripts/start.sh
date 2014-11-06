#!/bin/bash

set -o nounset
set -o errexit

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

echo "Creating log dir at /var/log/mevdds/"
mkdir -p /var/log/mevdds/
echo "Performing apt-get update"
apt-get update >> /dev/null

echo "Starting install" >> /var/log/mevdds/install.log
date >> /var/log/mevdds/install.log

if [ $1 == 'opencache' ]; then
   bash 'generic/opencache/setup.sh'
elif [ $1 == 'tools' ]; then
  bash 'generic/tools/setup.sh'
elif [ $1 == 'floodlight' ]; then
  bash 'generic/floodlight/setup.sh'
elif [ $1 == 'scootplayer' ]; then
  bash 'generic/scootplayer/setup.sh'
fi

echo "Completed install" >> /var/log/mevdds/install.log
date >> /var/log/mevdds/install.log

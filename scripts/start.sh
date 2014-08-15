#!/bin/bash

set -o nounset
set -o errexit

if [ $1 == 'opencache' ]; then
   bash 'generic/opencache/setup.sh'
elif [ $1 == 'tools' ]; then
  bash 'generic/tools/setup.sh'
elif [ $1 == 'floodlight' ]; then
  bash 'generic/floodlight/setup.sh'
fi

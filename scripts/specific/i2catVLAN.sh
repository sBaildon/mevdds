#!/bin/bash

VLAN=$1
IP=$2

apt-get install -y vlan


ifconfig eth2 up

vconfig add eth2 $VLAN

ifconfig eth2.$VLAN $IP/24 up

ifconfig  eth2.$VLAN mtu 1496
#!/bin/bash

VLAN=$1
IP=$2

apt-get install -y vlan # vlan isn't always installed..
modprobe 8021q # need to load this module for vlan support

ifconfig eth2 up

vconfig add eth2 $VLAN

ifconfig eth2.$VLAN $IP/24 up

ifconfig  eth2.$VLAN mtu 1496
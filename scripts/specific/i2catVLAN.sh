#!/bin/bash

VLAN=$1
IP=$2

apt-get install -y vlan # vlan isn't always installed..
modprobe 8021q # need to load this module for vlan support

ifconfig eth1 up

vconfig add eth1 $VLAN

ifconfig eth1.$VLAN $IP/24 up

ifconfig  eth1.$VLAN mtu 1496
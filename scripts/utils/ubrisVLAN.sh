#!/bin/bash

VLAN=$1
IP=$2

ifconfig eth1 up

vconfig add eth1 $VLAN

ifconfig eth1.$VLAN $IP/24 up

ifconfig  eth1.$VLAN mtu 1496
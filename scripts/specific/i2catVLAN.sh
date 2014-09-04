#!/bin/bash

VLAN=$1
IP=$2

ifconfig eth2 up

ifconfig add eth2 $VLAN

ifconfig eth2.$VLAN $IP/24 up

#ifconfig  eth2.$VLAN mtu 1496

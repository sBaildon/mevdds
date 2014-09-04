#!/bin/bash

VLAN=$1
IP=$2

#ifconfig eth2 up

#ifconfig add eth2 $VLAN

#ifconfig eth2.$VLAN $IP/24 up

#ifconfig  eth2.$VLAN mtu 1496


ip link add link eth2 name eth2.$VLAN type vlan $VLAN

ip addr add $IP/24 dev eth2.$VLAN
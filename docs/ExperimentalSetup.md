Experimental Setup
=====

### Note

This documentation assumes that the VM's / OF Resources have already been requested and are in a clean state. All of the scripts that are used assume that they are being ran as root for simplicity. If the node does not log in as root by default either use `su -` or `sudo su -` in order to gain root.

### Setup

Clone this repo in order to gain access to the install scripts. (In some cases git may need to be installed first using `apt-get install git`)

`git clone https://github.com/broadbent/mevdds.git ~/mevdds/`

Install the appropriate software depending on what you wish to run on the node. If there are issues with this stage the output is logged into files within `/var/log/mevdds/`
- Opencache `~/mevdds/scripts/start.sh opencache`
- Floodlight `~/mevdds/scripts/start.sh floodlight`
- Tools (HTTP Client/Server) `~/mevdds/scripts/start.sh tools`

Run the VLAN setup relevant to the current testbed. In this case 'VLAN' and 'IP' represent the VLAN that has been requested as part of the OF Flowspace (default 180) and the IP address that you wish to assign to the node on the experimental network. Ensure that the IP's are unique across all of the testbeds that are being connected as part of the experimental setup.
- i2Cat `~/mevdds/scripts/specific/i2catVLAN.sh VLAN IP`
- uBris `~/mevdds/scripts/specific/uBrisVLAN.sh VLAN IP`

At this stage the expermental setup is complete.

Once the Floodlight controller is running and has connected to the appropriate switches it is advisable to test connectivity between nodes using ping.
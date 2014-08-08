Simple Openflow Topology on multiple sites
=====


### Installation

To be able to carry out experimentation omni must be downloaded and configured as follows

- Download omni from http://trac.gpolab.bbn.com/gcf/wiki/Omni
- Follow the basic configuration as explained for each platform here
    - Linux http://trac.gpolab.bbn.com/gcf/wiki/QuickStart
	- Mac http://trac.gpolab.bbn.com/gcf/wiki/MacOS
	- Windows http://trac.gpolab.bbn.com/gcf/wiki/Windows
- Add the following configuration to the omni_config file at the end of the "AM nicknames" section (located `~/.gcf/omni_config` by default)
	- ubrisVM=urn:publicid:IDN+univbristam+authority+cm,https://137.222.204.27:8445/xmlrpc/sfa/
	- ubrisOF=urn:publicid:IDN+univbristam+authority+cm,https://137.222.204.27:3626/sfa/2/
	- i2catVM=urn:publicid:IDN+i2catvtam+authority+cm,https://137.222.204.27:5001/xmlrpc/sfa/
	- i2catOF=urn:publicid+openflow:i2cat:ofam+authority+cm,https://137.222.204.27:5005/xmlrpc/sfa/
	- iminds1VM=urn:publicid:IDN+wall1.ilabt.iminds.be+authority+cm,https://www.wall1.ilabt.iminds.be:12369/protogeni/xmlrpc/am/2.0
	- iminds2VM=urn:publicid:IDN+wall2.ilabt.iminds.be+authority+cm,https://www.wall2.ilabt.iminds.be:12369/protogeni/xmlrpc/am/2.0a


### Setup

To request resources on testbeds there are several steps that must be taken:

- In order to carry out experimentation a slice must first be requested as follows
	- `path/to/omni.py createslice NAME_OF_SLICE`
- The time till the slice expires will also be returned.
- A sliver must then be requested on each VM AM requred as follows
	- `path/to/omni.py createsliver NAME_OF_SLICE -a NAME_OF_VM_AM path/to/rspec/file.rspec`
- The return will contain information about the IP addresses of any nodes requested. The time till the sliver expires will also be returned.
- A sliver must then be requested on each OF AM requred as follows. The rspec files should be modified to ensure that the Openflow Controllers are set correctly in each rspec
	- `path/to/omni.py createsliver NAME_OF_SLICE -a NAME_OF_OF_AM path/to/rspec/file.rspec`
- The return will contain details about the Flowspace requested. The time till the sliver expires will also be returned.

### Closing and Extending slivers/slices

To close a connection two methods can be employed. Firstly by just allowing the slice and slivers to expire and secondly by sending commands to release the resources consumed by each sliver. The slice must still expire naturally. On each am that a sliver is currently active run the following command. 

- `path/to/omni.py deletesliver NAME_OF_SLICE -a NAME_OF_AM`

Extending the reservation of a slice is as follows

- `path/to/omni.py renewslice NAME_OF_SLICE NEW_EXPIRATION_TIME`
	- `NEW_EXPIRATION_TIME` is either in `"MM/DD/YYYY HH:MM"` format (quotes important) or `YYYYMMDDTHH:MM:SSZ`
	
Extending the reservation of a sliver is as follows

- `path/to/omni.py renewsliver NAME_OF_SLICE -a NAME_OF_AM NEW_EXPIRATION_TIME`
	- `NEW_EXPIRATION_TIME` is either in `"MM/DD/YYYY HH:MM"` format (quotes important) or `YYYYMMDDTHH:MM:SSZ`
	- This must be performed on each AM that you wish to renew.


Further details and commands can be found at http://trac.gpolab.bbn.com/gcf/wiki/OmniOverview

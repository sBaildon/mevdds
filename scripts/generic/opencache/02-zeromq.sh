# Get ZeroMQ
wget -P ~ http://download.zeromq.org/zeromq-4.0.4.tar.gz
tar -zxf ~/zeromq-4.0.4.tar.gz --directory ~
cd ~/zeromq-4.0.4
./configure
make
make install

# Go to home directory
cd ~

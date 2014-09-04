echo "[ZeroMQ install + configure]" | tee -a /var/log/mevdds/opencache.log

# Get ZeroMQ
echo "[wget zeromq]" | tee -a /var/log/mevdds/opencache.log
wget -P ~ http://download.zeromq.org/zeromq-4.0.4.tar.gz -a /var/log/mevdds/opencache.log

echo "[tar]" | tee -a /var/log/mevdds/opencache.log
tar -zxf ~/zeromq-4.0.4.tar.gz --directory ~  >> /var/log/mevdds/opencache.log

cd ~/zeromq-4.0.4

echo "[configure]" | tee -a /var/log/mevdds/opencache.log
./configure  &>> /var/log/mevdds/opencache.log

echo "[make]"  | tee -a /var/log/mevdds/opencache.log
make  >> /var/log/mevdds/opencache.log

echo "[make install]" | tee -a /var/log/mevdds/opencache.log
make install  >> /var/log/mevdds/opencache.log

# Go to home directory
cd ~

# Update repositories
#apt-get update >> /dev/null

# Get everything we need from repositories
echo "[install mongodb]" | tee -a /var/log/mevdds/opencache.log
apt-get -y install mongodb >> /var/log/mevdds/opencache.log

cd ~

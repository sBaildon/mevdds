# Update repositories
#apt-get update >> /dev/null

# Get everything we need from repositories
echo "[MongoDB install]" | tee -a /var/log/mevdds/opencache.log

# Adding key
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 >> /var/log/mevdds/opencache.log
# Adding repo
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | tee /etc/apt/sources.list >> /var/log/mevdds/opencache.log
# Update
apt-get update

apt-get -y install mongodb-org >> /var/log/mevdds/opencache.log

cd ~

echo "[MongoDB configure]" | tee -a  /var/log/mevdds/opencache.log

# Kill running mongoDBs
pkill mongo

mkdir -p /data/db
mongod --fork --logpath=/var/log/mevdds/mongo_opencache  >> /var/log/mevdds/opencache.log
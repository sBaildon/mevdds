echo "[MongoDB install + configure]" | tee -a  /var/log/mevdds/opencache.log

# Kill running mongoDBs
pkill mongo

mkdir -p /data/db
mongod --fork --logpath=/var/log/mongo_opencache  >> /var/log/mevdds/opencache.log
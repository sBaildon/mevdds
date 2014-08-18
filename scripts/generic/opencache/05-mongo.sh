echo "MongoDB install + configure"

# Kill running mongoDBs
pkill mongo

mkdir -p /data/db
mongod --fork --logpath=/var/log/mongo_opencache

# Kill running mongoDBs
sudo pkill mongo

sudo mkdir -p /data/db
sudo mongod --fork --logpath=/var/log/mongo_opencache

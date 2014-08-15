# Kill running mongoDBs
sudo pkill mongo

sudo mkdir -p /data/db
touch /var/log/mongo
sudo mongod --fork --logpath=/var/log/mongo

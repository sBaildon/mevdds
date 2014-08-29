database=$1

if [ $1 == 'cont' ] || [ $1 == 'controller' ]; then
    mongo opencache --eval "db.dropDatabase()"
elif [ $1 == 'node' ]; then
  mongo opencache_node --eval "db.dropDatabase()"
fi

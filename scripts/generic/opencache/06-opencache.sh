echo "OpenCache install"

# Get and install OpenCache
wget https://github.com/broadbent/opencache/archive/master.zip -P ~/
unzip ~/master.zip -d ~/
mv ~/opencache-master/ ~/opencache/
cd ~/opencache
python setup.py develop

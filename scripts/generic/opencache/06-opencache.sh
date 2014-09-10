echo "[OpenCache install]" | tee -a  /var/log/mevdds/opencache.log

# Get and install OpenCache
wget https://github.com/broadbent/opencache/archive/master.zip -P ~/ -a /var/log/mevdds/opencache.log

echo "[OpenCache unzip]" | tee -a  /var/log/mevdds/opencache.log
unzip ~/master.zip -d ~/  >> /var/log/mevdds/opencache.log

rm ~/master.zip # no need to leave this on the machine

mv ~/opencache-master/ ~/opencache/

cd ~/opencache

echo "[python install opencache]" | tee -a /var/log/mevdds/opencache.log
python setup.py develop  >> /var/log/mevdds/opencache.log

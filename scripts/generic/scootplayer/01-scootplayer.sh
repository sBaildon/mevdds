echo '[Cloning scootplayer]' | tee -a /var/log/mevdds/scootplayer.log
git clone https://github.com/broadbent/scootplayer.git ~ >> /var/log/mevdds/scootplayer.log
cd ~/scootplayer/

ech '[Installing scootplayer requirements]' | tee -a /var/log/mevdds/scootplayer.log
pip install -r requirements.txt >> /var/log/mevdds/scootplayer.log

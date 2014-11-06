echo "[ZeroMQ python bindings]" | tee -a  /var/log/mevdds/opencache.log

# Install ZeroMQ python bindings (opencache does this, but it causes it to break??)
pip install pyzmq  >> /var/log/mevdds/opencache.log

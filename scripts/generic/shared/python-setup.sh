echo "[Python-setup]" | tee -a /var/log/mevdds/python-setup.log

# Update repositories
#apt-get update

# Get everything we need from repositories

if grep -q 6.* /etc/debian_version; then
	echo "[Debian 6 detected]" | tee -a /var/log/mevdds/python-setup.log
	apt-get -y install build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline5-dev libssl-dev libdb-dev curl python-dev git vim unzip >> /var/log/mevdds/python-setup.log
elif grep -q 7.* /etc/debian_version; then
	echo "[Debian 7 detected]" | tee -a /var/log/mevdds/python-setup.log
	apt-get -y install build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline-gplv2-dev libssl-dev libdb-dev curl python-dev git vim unzip >> /var/log/mevdds/python-setup.log
else
	echo "[ERROR] Unknown Debian version" | tee -a /var/log/mevdds/python-setup.log
	return -1
fi

cd ~
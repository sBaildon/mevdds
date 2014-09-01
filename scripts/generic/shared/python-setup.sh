echo "Python-setup"

# Update repositories
apt-get update

# Get everything we need from repositories

if grep -q 6.* /etc/debian_version; then
	echo "Debian 6 detected"
	apt-get -y install build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline5-dev libssl-dev libdb-dev curl python-dev git vim unzip
elif grep -q 7.* /etc/debian_version; then
	echo "Debian 7 detected"
	apt-get -y install build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline-gplv2-dev libssl-dev libdb-dev curl python-dev git vim unzip
else
	echo "Unknown Debian version"
fi

cd ~
echo "[Python-install]" | tee -a /var/log/mevdds/python-install.log

#Get Python 2.7 if necessary
if [[ $(python --version 2>&1) != *2\.7.* ]]
then
    echo "[Python version is not compatible with OpenCache, installing 2.7]" | tee -a /var/log/mevdds/python-install.log
    wget -P ~ http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tgz --no-check-certificate -a /var/log/mevdds/python-install.log

    echo "[Extract tar file]" | tee -a /var/log/mevdds/python-install.log
    tar -xzf ~/Python-2.7.3.tgz --directory ~  >> /var/log/mevdds/python-install.log

    cd ~/Python-2.7.3

    echo "[congfigure python]" | tee -a /var/log/mevdds/python-install.log
    ./configure --prefix=/usr --enable-shared &>>  /var/log/mevdds/python-install.log

    echo "[make python]" | tee -a /var/log/mevdds/python-install.log
    make &>> /var/log/mevdds/python-install.log

    echo "[make install python]" | tee -a /var/log/mevdds/python-install.log
    make install &>> /var/log/mevdds/python-install.log

    rm ~/Python-2.7.3.tgz #no need to leave this on the machine
fi

# Go to home directory
cd ~

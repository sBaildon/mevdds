echo "Python-install"

#Get Python 2.7 if necessary
if [[ $(python --version 2>&1) != *2\.7.* ]]
then
    echo "Python version is not compatible with OpenCache, installing 2.7"
    wget -P ~ http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tgz --no-check-certificate
    tar -xzf ~/Python-2.7.3.tgz --directory ~
    cd ~/Python-2.7.3
    ./configure --prefix=/usr --enable-shared
    make
    make install
fi

# Go to home directory
cd ~

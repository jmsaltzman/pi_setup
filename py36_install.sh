#!/bin/sh

# instructions for installing Python 3.6.2
# Mostly from: https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f
# Simpler: https://raspberrypi.stackexchange.com/questions/59381/how-do-i-update-my-rpi3-to-python-3-6

# Issues:
# "python3" still runs 3.4.2, not 3.6.2

echo "Starting Python 3.6.2 installation, this will take a while..."

# Download, uncompress, build, and install Python
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.2.tgz
sudo tar xzvf Python-3.6.2.tgz
cd Python-3.6.2
./configure
sudo make
sudo make install

# Prompt to remove installation files
echo "Remove installation files? ('y' to remove)"
read response
if [ "$response" = "y" ]
then
    cd ..
    sudo rm -r Python-3.6.2
    sudo rm Python-3.6.2.tgz
else
    echo "NOT removing installation files"
fi


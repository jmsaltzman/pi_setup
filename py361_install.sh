#!/bin/sh



# instructions for installing Python 3.6.1
# Mostly from: https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f
# Simpler: https://raspberrypi.stackexchange.com/questions/59381/how-do-i-update-my-rpi3-to-python-3-6

# Issues:
# "python3" still runs 3.4.2, not 3.6.1

echo "Starting Python 3.6.1 installation..."

# Download, uncompress, build, and install Python
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
sudo tar xzvf Python-3.6.1.tgz
cd Python-3.6.1
./configure
make
sudo make install

# Remove installation files
cd ..
sudo rm -r Python-3.6.1
rm Python-3.6.1.tgz

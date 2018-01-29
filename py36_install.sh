#!/bin/sh

# Tested 2017-10-27 with Raspbian 2017-9-7 release, Python 3.6.3

# Mostly from: https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f

# Install build tools
sudo apt-get update
sudo apt-get -fym install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev 
sudo apt-get -fym install libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev

# Set the Python version
ver="3.6.4"
echo "Starting Python $ver installation, this will take a while..."

# Download, uncompress, build, and install Python
wget https://www.python.org/ftp/python/$ver/Python-$ver.tgz
sudo tar xzvf Python-$ver.tgz
cd Python-$ver
sudo ./configure
sudo make -j 4
sudo make install

# Make compiled binaries globally available 
sudo ln -s /usr/local/bin/pydoc3.6 /usr/bin/pydoc3.6
sudo ln -s /usr/local/bin/python3.6 /usr/bin/python3.6
sudo ln -s /usr/local/bin/python3.6m /usr/bin/python3.6m
sudo ln -s /usr/local/bin/pyvenv-3.6 /usr/bin/pyvenv-3.6
sudo ln -s /usr/local/bin/pip3.6 /usr/bin/pip3.6

# Remove installation files
cd ..
sudo rm -r Python-$ver
sudo rm Python-$ver.tgz



echo "Python $ver installation complete"

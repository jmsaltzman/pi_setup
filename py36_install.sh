#!/bin/sh

# instructions for installing Python 3.6.x
# Mostly from: https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f

# Issues:
# Fails on make install: zlib not installed, hopefully fixed with build tools install
# "python3" still runs 3.4.2, not 3.6.x!

# Install build tools
sudo apt-get update
sudo apt-get -f install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev 
sudo apt-get -f install build-essential libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev

# Set the Python version
ver="3.6.1"
echo "Starting Python $ver installation, this will take a while..."

# Download, uncompress, build, and install Python
wget https://www.python.org/ftp/python/$ver/Python-$ver.tgz

sudo tar xzvf Python-$ver.tgz
cd Python-$ver
sudo ./configure
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

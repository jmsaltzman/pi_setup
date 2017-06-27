#!/bin/sh -f

# instructions for installing Python 3.6.1
# Mostly from https://gist.github.com/dschep/24aa61672a2092246eaca2824400d37f

# Install required build tools; some may already be installed
sudo apt-get install -y build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev \
  libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev

# Download, uncompress, build, and install Python
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz
tar xzvf Python-3.6.1.tgz
cd Python-3.6.1
./configure
make
sudo make install

# Remove installation files
sudo rm -r Python-3.6.1
rm Python-3.6.1.tgz

# Remove build tools
sudo apt-get -y --purge remove build-essential tk-dev
sudo apt-get -y --purge remove libncurses5-dev libncursesw5-dev libreadline6-dev
sudo apt-get -y --purge remove libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev
sudo apt-get -y --purge remove libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev

# Clean up
sudo apt-get -y autoremove
sudo apt-get -y clean

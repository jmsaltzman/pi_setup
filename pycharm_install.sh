#!/bin/sh -f

# Installation instructions:
# https://www.jetbrains.com/help/pycharm/installation-and-launching.html#linux

# Set the PyCharm version
ver="2017.3.3"
echo "Starting PyCharmm $ver installation, this will take a few minutes..."

# Download installer archive
wget https://download.jetbrains.com/python/pycharm-community-$ver.tar.gz

# Uncompress installer
sudo tar xzvf pycharm-community-$ver.tar.gz -C /opt/

# Remove archive
rm pycharm-community-$ver.tar.gz

# Link to pycharm script
sudo ln -s /opt/pycharm-community-$ver/bin/pycharm.sh /usr/bin/pycharm

echo "PyCharm $ver installation complete"


#!/bin/sh -f

# Installation instructions:
# https://www.jetbrains.com/help/pycharm/installation-and-launching.html#linux

# Prerequisite: Java installation
./java_install.sh

# Set the PyCharm version
# example latest direct link: 
#   https://download.jetbrains.com/python/pycharm-community-2021.3.3.exe
ver="2021.3.3"
echo "Starting PyCharmm $ver installation, this will take some time..."

# Download installer archive
wget https://download.jetbrains.com/python/pycharm-community-$ver.tar.gz

# Uncompress installer
sudo tar xzvf pycharm-community-$ver.tar.gz -C /opt/

# Remove archive
rm pycharm-community-$ver.tar.gz

# Link to pycharm script
sudo ln -s /opt/pycharm-community-$ver/bin/pycharm.sh /usr/bin/pycharm

echo "PyCharm $ver installation complete"


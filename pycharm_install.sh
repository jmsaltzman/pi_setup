#!/bin/sh -f

# Installation instructions:
# https://www.jetbrains.com/help/pycharm/installation-and-launching.html#linux

echo "PyCharm Installer"

# Download and uncompress installer archive
wget https://download.jetbrains.com/python/pycharm-community-2017.1.4.tar.gz
sudo tar xzvf pycharm-community-2017.1.4.tar.gz -C /opt/

# Install
cd /opt/pycharm-community-2017.1.4/bin
echo "Running installer shell script..."
sudo ./pycharm.sh

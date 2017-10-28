#!/bin/sh -f

# Installation instructions:
# https://www.jetbrains.com/help/pycharm/installation-and-launching.html#linux

# Download installer archive
wget https://download.jetbrains.com/python/pycharm-community-2017.2.3.tar.gz
# Uncompress installer
sudo tar xzvf pycharm-community-2017.2.3.tar.gz -C /opt/
# Remove archive
rm pycharm-community-2017.2.3.tar.gz
# Link to pycharm script
sudo ln -s /opt/pycharm-community-2017.2.3/bin/pycharm.sh pycharm

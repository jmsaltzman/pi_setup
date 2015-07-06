#!/bin/sh -f

# instructions by Adrian Rosebrock from:
# http://www.pyimagesearch.com/2015/02/23/install-opencv-and-python-on-your-raspberry-pi-2-and-b/

# Script 1 of 2

sudo apt-get install -y build-essential cmake pkg-config
sudo apt-get install -y libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libatlas-base-dev gfortran

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

sudo pip install virtualenv
sudo pip install virtualenvwrapper

cat ~/.profile .profile_py_ve > .profile
cp ~/.profile ~/.profile_old
cp .profile ~/
source ~/.profile
mkvirtualenv cv

sudo apt-get install -y python2.7-dev
sudo pip install numpy

# Extra installs per Pajankar book
sudo apt-get install -y python-matplotlib
sudo apt-get install -y fswebcam



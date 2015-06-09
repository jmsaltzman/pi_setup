#!/bin/sh -f

# execute w/sudo

# instructions by Adrian Rosebrock from:
# http://www.pyimagesearch.com/2015/02/23/install-opencv-and-python-on-your-raspberry-pi-2-and-b/

# Script 1 of 2

apt-get install -y build-essential cmake pkg-config
apt-get install -y libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev
apt-get install -y libgtk2.0-dev
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
apt-get install -y libatlas-base-dev gfortran

wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py

pip install virtualenv virtualenvwrapper

cat ~/.profile .profile_py_ve > .profile
#mv .profile ~/


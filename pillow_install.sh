#!/bin/sh

# Install python3 Pillow
# Mostly from: https://www.techcoil.com/blog/how-to-setup-python-imaging-library-pillow-on-raspbian-stretch-lite-for-processing-images-on-your-raspberry-pi/

# Install prerequisites
sudo apt-get install libjpeg62 -y
sudo apt-get install libjpeg62-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install libfreetype6-dev -y
sudo apt-get install liblcms1-dev -y
sudo apt-get install libopenjp2-7 -y
sudo apt-get install libtiff5 -y
sudo apt-get install libjpeg-dev -y

# Install pillow itself
sudo pip3 install pillow

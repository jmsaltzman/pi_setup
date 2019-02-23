#!/bin/sh -f

# instructions by Adrian Rosebrock from:
# https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/
# Edited 2018-2-22

# ...
# Step #2: Install OpenCV 4 dependencies on your Raspberry Pi

# Let’s update our system:
sudo apt-get update && sudo apt-get upgrade

# And then let’s install developer tools including CMake:
sudo apt-get install build-essential cmake unzip pkg-config

# Next, let’s install a selection of image and video libraries — these are critical to being able to work with image and video files:
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev

# From there, let’s install GTK, our GUI backend:
sudo apt-get install libgtk-3-dev

# And now let’s install a package which may reduce pesky GTK warnings:
sudo apt-get install libcanberra-gtk*
# The asterisk will grab the ARM specific GTK.

# Followed by installing two packages which contain numerical optimizations for OpenCV:
sudo apt-get install libatlas-base-dev gfortran

# And finally, let’s install the Python 3 development headers:
sudo apt-get install python3-dev


# Step #3: Download OpenCV 4 for your Raspberry Pi

# Let’s navigate to our home folder and download both opencv and
# opencv_contrib. The contrib repo contains extra modules and 
# functions which we frequently use here on the PyImageSearch blog. 
# You should be installing the OpenCV library with the additional 
# contrib modules as well.

# When you’re ready, just follow along to download both the opencv
# and opencv_contrib  code:
cd ~
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.0.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.0.0.zip

# From there, let’s unzip the archives:
unzip opencv.zip
unzip opencv_contrib.zip

# I also like to rename the directories:
mv opencv-4.0.0 opencv
mv opencv_contrib-4.0.0 opencv_contrib

# If you skip renaming the directories, don’t forget to update the CMake paths.

# Now that opencv  and opencv_contrib  are downloaded and ready to go, 
# let’s set up our environment.






# --- old script
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
sudo apt-get install -y python-matplotlib fswebcam
sudo apt-get install -y ffmpeg mencoder
sudo apt-get install -y libavcodec-extra-53
sudo apt-get install -y libav-tools
sudo apt-get install -y fbi

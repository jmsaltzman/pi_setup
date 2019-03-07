#!/bin/sh -f

# instructions by Adrian Rosebrock from:
# https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/
# Edited 2018-2-22

echo "Installing cv!"

# ...

# Step #2: Install OpenCV 4 dependencies on your Raspberry Pi

# Let’s update our system:
sudo apt-get update && sudo apt-get upgrade
# ok

# And then let’s install developer tools including CMake:
sudo apt-get -fym install build-essential cmake unzip pkg-config
# ok

# Next, let’s install a selection of image and video libraries — these are critical to being able to work with image and video files:
sudo apt-get -fym install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get -fym install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get -fym install libxvidcore-dev libx264-dev
#ok

# From there, let’s install GTK, our GUI backend:
sudo apt-get -fym install libgtk-3-dev
# ok

# And now let’s install a package which may reduce pesky GTK warnings:
sudo apt-get -fym install libcanberra-gtk*
# ok
# The asterisk will grab the ARM specific GTK.

# Followed by installing two packages which contain numerical optimizations for OpenCV:
sudo apt-get -fym install libatlas-base-dev gfortran
# ok

# And finally, let’s install the Python 3 development headers:
sudo apt-get -fym install python3-dev
# ok


# =================================================================

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
#ok but didn't download the first time, not sure why

# From there, let’s unzip the archives:
unzip opencv.zip
unzip opencv_contrib.zip
# ok

# I also like to rename the directories:
mv opencv-4.0.0 opencv
mv opencv_contrib-4.0.0 opencv_contrib
# ok

# If you skip renaming the directories, don’t forget to update the CMake paths.

# Now that opencv  and opencv_contrib  are downloaded and ready to go, 
# let’s set up our environment.


# =================================================================

# Step #4: Configure your Python 3 virtual environment for OpenCV 4
# Let’s grab and install pip, a Python Package Manager.

# [WE ALREADY HAVE PIP BUT I GUESS WE DO THIS ANYWAY?]
# To install pip, simply enter the following in your terminal:
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

# Make use of virtual environments for Python development
# If you aren’t familiar with virtual environments, please take a
# moment look at this article on RealPython or read the first half
# of the this blog post on PyImageSearch.

# Virtual environments will allow you to run different versions of
# Python software in isolation on your system. Today we’ll be setting
# up just one environment, but you could easily have an environment
# for each project.

# Let’s go ahead and install   virtualenv  and virtualenvwrapper  now — 
# they allow for Python virtual environments:

sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/get-pip.py ~/.cache/pip


# Edit ~/.profile to add:
echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.profile
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.profile

# Do this instead?
# echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python" >> ~/.profile

echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile

# Source ~/.profile:
source ~/.profile


# Create a virtual environment to hold OpenCV 4 and additional packages
# Now you’re at the point where you can create your OpenCV 4 + Python 3 
# virtual environment on your Raspberry Pi:

mkvirtualenv cv -p python3

# This line simply creates a Python 3 virtual environment named cv .

# You can (and should) name your environment(s) whatever you’d like — 
# I like to keep them short and sweet while also providing enough information 
# so I’ll remember what they are for. For example, I like to name my environments 
# like this:

# py3cv4
# py3cv3
# py2cv2
# etc.
# Let’s verify that we’re in the cv  environment by using the workon  command:

workon cv

# Figure 3: The workon command is part of the virtualenvwrapper package and 
# allows us to easily activate virtual environments. Here I’m activating the 
# cv environment which we’ll install OpenCV 4 into on our Raspberry Pi.

# Install NumPy
# The first Python package and only OpenCV prerequisite we’ll install is NumPy:

pip install numpy

# We can now prepare OpenCV 4 for compilation on our Raspberry Pi.


# =================================================================

# Step #5: CMake and compile OpenCV 4 for your Raspberry Pi

# For this step, we’re going to setup our compile with CMake followed 
# by running make  to actually compile OpenCV. This is the most 
# time-consuming step of today’s blog post.

# Navigate back to your OpenCV repo and create + enter a build  directory:

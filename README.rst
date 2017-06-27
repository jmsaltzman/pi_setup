Files for setting up a Raspberry Pi
===================================

This series of files adds shell shortcuts and installs many packages for general use, Arduino programming, and OpenCV programming.

This repo is my place to keep files to "wget" as soon as the Pi is online.

.sh scripts should be executed from their directory: ~/pi_setup

Updated for Raspbian Jessie with Pixel 2017-06-21 release, downloaded from:
https://www.raspberrypi.org/downloads/raspbian/

And installed on an SD card with Etcher:
https://etcher.io/


**Steps:**

* Follow "raspi-config.txt" to change the settings when running

.. code-block:: bash

  sudo raspi-config

or with the graphical version under *[Raspberry] > Preferences > Raspberry Pi Configuration*.


* Setup wifi or wired access with the desktop taskbar *Wireless & Wired Network Settings* program, upper right. If using wi-fi only:

.. code-block:: bash

  sudo nano /etc/network/interfaces

and comment out the "iface eth0..." line.

* Set a fixed IP address by right-clicking on the wi-fi icon, choose "Wireless & Wired Network Settings", choose the interface (eth0 or wlan0) from the pull-down, and enter the IP address you want to use. This will make headless operation easier.

* Get this repo and run commands:

.. code-block:: bash

  git clone https://github.com/jmsaltzman/pi_setup
  cd pi_setup
  chmod 775 *sh
  ./update.sh
  ./bash_setup.sh
  sudo reboot


* Install RealVNC viewer on another machine to run the Pi headless.


This is a good time to clone a system image.

-------Stop here: need to sort Arduino, virtualenv, and OpenCV installation

Investigating simplest way to install Python 3.6.1
./py361_install.sh

Arduino setup:
./arduino_setup.sh

Install virtualenv:
sudo apt-get install python-virtualenv

Investigating these for Python 3.6.1 compatibility:
OpenCV setup takes a while:
1. ./cv_tools_install_AR1.sh 
2. ./cv_tools_install_AR2.sh   <-- This will take hours 
3. ./cv_files_setup.sh

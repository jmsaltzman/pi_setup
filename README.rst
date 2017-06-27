Files for setting up a Raspberry Pi
===================================

This series of files adds shell shortcuts and installs many packages for general use, Arduino programming, and OpenCV programming.

This repo is my place to keep files to "wget" as soon as the Pi is online.

.sh scripts should be executed from their directory: ~/pi_setup

Updated for Raspbian Jessie with Pixel 2017-06-21 release, downloaded from:
https://www.raspberrypi.org/downloads/raspbian/


**Steps:**
1. Follow "raspi-config.txt" to change the settings when running 'raspi-config'.
2. Setup wifi or wired access with the desktop taskbar "Wireless & Wired Network Settings" program, upper right. If using wi-fi only, 'sudo nano /etc/network/interfaces' and comment out the "iface eth0..." line.
3. 'sudo apt-get -y update ; sudo apt-get -y upgrade ; sudo reboot'
4. Get this repo with 'git clone https://github.com/jmsaltzman/pi_setup'
5. cd pi_setup
6. chmod 775 *sh
7. ./bash_setup.sh
8. Install RealVNC viewer on another machine to run the Pi headless.
Investigating simplest way to install Python 3.6.1
9. ./py361_install.sh


This is a good time to clone a system image.

-------Stop here: need to sort Arduino, virtualenv, and OpenCV installation

Arduino setup:
./arduino_setup.sh

Install virtualenv:
sudo apt-get install python-virtualenv

Investigating these for Python 3.6.1 compatibility:
OpenCV setup takes a while:
1. ./cv_tools_install_AR1.sh 
2. ./cv_tools_install_AR2.sh   <-- This will take hours 
3. ./cv_files_setup.sh

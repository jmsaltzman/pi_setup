Files for setting up a Raspberry Pi
===================================

This series of files adds shell shortcuts and installs many packages for general use, Arduino programming, and OpenCV programming.

This repo is my place to keep files to "wget" as soon as the Pi is online.

.sh scripts should be executed from their directory: ~/pi_setup

Updated for Raspbian Jessie with Pixel 2017-06-21 release.

Steps:
------
1. "raspi-config.txt" has the settings I prefer for the "raspi-config" program.
2. Setup wifi or wired access with the desktop taskbar "Wireless & Wired Network Settings" program, upper right.
2b. If using wireless, 'sudo nano /etc/network/interfaces' and comment out the "iface eth0..." line.
3. 'sudo apt-get -y update ; sudo apt-get -y upgrade ; sudo reboot'
4. Get this repo with 'git clone https://github.com/jmsaltzman/pi_setup'
5. cd pi_setup
6. chmod 775 *sh
7. ./bash_setup.sh
8. Install RealVNC viewer on another machine to run the Pi headless.

# Investigating this script:
9. ./arduino_setup.sh

10. This is a good time to clone a system image.

# Investigating simplest way to install Python 3.6.1

Install virtualenv:

sudo apt-get install python-virtualenv

# Investigating these for Python 3.6.1 compatibility:

OpenCV setup takes a while...
1. ./cv_tools_install_AR1.sh 
2. ./cv_tools_install_AR2.sh   <-- This will take hours 
3. ./cv_files_setup.sh

DON'T Run cv_tools_install.sh (chmod'ed to 775, run as sudo) to install CV packages! It doesn't work.

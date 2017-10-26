Setting up a Raspberry Pi
=========================

This repo is just my place to keep files to "wget" as soon as I get a Pi online.

These files help with intitial setup by adding shell helpers and installing packages for general use and Python, OpenCV, and Arduino development.

Updated for Raspbian Jessie with Pixel 2017-06-21 release, downloaded from:
https://www.raspberrypi.org/downloads/raspbian/

And installed on an SD card with Etcher:
https://etcher.io/


**Steps:**

* Follow "raspi-config.txt" to change the settings in the GUI program *[Raspberry] > Preferences > Raspberry Pi Configuration* or in a shell with:

.. code-block:: bash

  sudo raspi-config


* Setup wifi or wired access with the desktop taskbar *Wireless & Wired Network Settings* program, upper right. If using wi-fi only, comment out the "iface eth0..." line in:

.. code-block:: bash

  sudo nano /etc/network/interfaces


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

* Setup git globals:

.. code-block:: bash

  git config --global user.name "My Real Name"
  git config --global user.email email@example.com


* Install Python 3.6.1 with this script:

.. code-block:: bash

  py361_install.sh


This is a good time to clone the system image.

This guide has been useful:
https://beebom.com/how-clone-raspberry-pi-sd-card-windows-linux-macos/


-------Stop here: need to sort Arduino, virtualenv, and OpenCV installation

To do:

PyCharm installation
Seems to need this to interface with github
sudo apt-get install -y gnome-keyring




Check Arduino setup:
./arduino_setup.sh

Install virtualenv:
sudo apt-get install python-virtualenv

Investigate these for Python 3.6.1 compatibility:
OpenCV setup takes a while:
1. ./cv_tools_install_AR1.sh 
2. ./cv_tools_install_AR2.sh   <-- This will take hours 
3. ./cv_files_setup.sh

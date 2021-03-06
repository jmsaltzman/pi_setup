Setting up a Raspberry Pi
=========================

This repo is my place to keep files and instructions for setting up a Pi to my taste.

These files help with intitial setup by adding shell helpers and installing packages for general use and Python development.

NOTE: Updating for Raspbian Stretch with Desktop, 2017-09-07 release, downloaded from:
https://www.raspberrypi.org/downloads/raspbian/

And installed on an SD card with Etcher:
https://etcher.io/

Add an empty file "ssh" to allow ssh access right away: no monitor or keyboard needed ever.

**Steps:**

* Follow https://github.com/jmsaltzman/pi_setup/blob/master/raspi-config.txt (more or less) to change the settings in a shell with:

.. code-block:: bash

  sudo raspi-config


* If in the desktop, setup wifi or a wired connection with the desktop taskbar *Wireless & Wired Network Settings* program, upper right.

    * Choose the interface (eth0 or wlan0) from the pull-down, and enter the IP address you want to use. This makes headless operation easy.

    * If connecting with wifi, choose the SSID and enter the password. You may want to check that the IP address is set correctly by running "ifconfig" in a shell.

* Download this repo and run commands (NOTE: update.sh will take a while):

.. code-block:: bash

  git clone https://github.com/jmsaltzman/pi_setup
  cd pi_setup
  chmod +x *sh
  chmod +x .bash_aliases
  ./update.sh
  ./bash_setup.sh
  sudo reboot


* Install RealVNC viewer on another machine to run the Pi headless: https://www.realvnc.com/en/connect/download/viewer/

    * At this point, if you were using the desktop on the Pi, you can unplug your monitor and keyboard/mouse and put the box wherever you like.

* Setup git globals with this script (it will ask for your name and email):

.. code-block:: bash

  ./git_setup.sh


* Install Python 3.6 with this script:

.. code-block:: bash

  ./py36_install.sh


* Install PyCharm:

    **NOTE**: you will be prompted to approve Java installation, necessary for PyCharm since the default that comes with Raspbian is old and slow.

.. code-block:: bash

  ./pycharm_install.sh


* This is a good time to clone the system image: [Raspberry] > Accessories > SD Card Copier


-------Stop here: need to sort OpenCV installation, Samba, Arduino, virtualenv


PyCharm seems to need this to interface with github:
sudo apt-get install -y gnome-keyring

OpenCV installation how-tos:
https://raspberrypi.stackexchange.com/questions/69169/how-to-install-opencv-on-raspberry-pi-3-in-raspbian-jessie
https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/

These used to work under 2.7 to install OpenCV, from the cv directory:
1. ./cv_tools_install_AR1.sh 
2. ./cv_tools_install_AR2.sh   <-- This will take hours 
3. ./cv_files_setup.sh

Check Arduino setup:
./arduino_setup.sh

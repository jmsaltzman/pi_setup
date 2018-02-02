Setting up a Raspberry Pi
=========================

This repo is just my place to keep files to "wget" as soon as I get a Pi online.

These files help with intitial setup by adding shell helpers and installing packages for general use and Python development.

NOTE: Updating for Raspbian Stretch with Desktop, 2017-09-07 release, downloaded from:
https://www.raspberrypi.org/downloads/raspbian/

And installed on an SD card with Etcher:
https://etcher.io/


**Steps:**

* Follow "raspi-config.txt" to change the settings in the GUI program *[Raspberry] > Preferences > Raspberry Pi Configuration* or in a shell with:

.. code-block:: bash

  sudo raspi-config


* Setup wifi or a wired connection with the desktop taskbar *Wireless & Wired Network Settings* program, upper right.

* Choose the interface (eth0 or wlan0) from the pull-down, and enter the IP address you want to use. This makes headless operation easy.

* If connecting with wifi, choose the SSID and enter the password. You may want to check that the IP address is set correctly by running "ifconfig" in a shell.

* Download this repo and run commands (NOTE: update.sh will take a while):

.. code-block:: bash

  git clone https://github.com/jmsaltzman/pi_setup
  cd pi_setup
  chmod +x *sh
  ./update.sh
  ./bash_setup.sh
  sudo reboot


* Install RealVNC viewer on another machine to run the Pi headless: https://www.realvnc.com/en/connect/download/viewer/

* At this point, you can unplug your HDMI and keyboard/mouse cables and put the box wherever you like.

* Setup git globals:

.. code-block:: bash

  git config --global user.name "My Real Name"
  git config --global user.email email@example.com


* Install Python 3.6 with this script:

.. code-block:: bash

  ./py36_install.sh


* Install an updated Java with this script and **pay attention** since there will be prompts:

.. code-block:: bash

  ./java_install.sh



* Install PyCharm:

.. code-block:: bash

  ./pycharm_install.sh


This is a good time to clone the system image!

This guide is helpful:
https://beebom.com/how-clone-raspberry-pi-sd-card-windows-linux-macos/

tl,dr: On Windows, install Win32 Disk Imager and just clone the SD card to an .img file.


-------Stop here: need to sort Arduino, virtualenv (needed?), and OpenCV installation

PyCharm seems to need this to interface with github:
sudo apt-get install -y gnome-keyring

Check Arduino setup:
./arduino_setup.sh

These used to work under 2.7 to install OpenCV:
1. ./cv_tools_install_AR1.sh 
2. ./cv_tools_install_AR2.sh   <-- This will take hours 
3. ./cv_files_setup.sh

OpenCV installation how-tos:
https://raspberrypi.stackexchange.com/questions/69169/how-to-install-opencv-on-raspberry-pi-3-in-raspbian-jessie

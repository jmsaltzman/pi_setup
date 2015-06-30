# pi_setup
Files for setting up a Raspberry Pi

This series of files adds shell shortcuts and installs many packages for general use, Arduino programming, and OpenCV programming.

This repo is my place to keep files to "wget" as soon as the Pi is online.

.sh scripts should be executed from their directory: ~/pi_setup

Steps:

1. "raspi-config.txt" has the settings I prefer for the "raspi-config" program.
2. Setup wifi access with the desktop "WiFi Networks Settings" program.
3. sudo apt-get -y update ; sudo apt-get -y upgrade ; sudo reboot
4. git clone https://github.com/jmsaltzman/pi_setup   <-- to get this repo
5. cd pi_setup
6. chmod 775 *sh
7. ./bash_setup.sh
8. ./vnc_setup.sh   <-- it will ask for vnc password, read-only (no)
9. ./arduino_setup.sh
10. This is a good time to clone a system image.

OpenCV setup takes a while, maybe overclock first (???)

1. ./cv_tools_install_AR1.sh 
2. ./cv_tools_install_AR2.sh   <-- This will take hours 
3. ./cv_files_setup.sh

. DON'T Run cv_tools_install.sh (chmod'ed to 775, run as sudo) to install CV packages! It doesn't work :(

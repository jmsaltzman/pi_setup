# pi_setup
Files for setting up a Raspberry Pi

This series of files adds shell shortcuts and installs many packages for general use, Arduino programming, and OpenCV programming.

This repo is my place to keep files to "wget" as soon as the Pi is online.

.sh scripts should be executed from their directory: ~/pi_setup

Steps:

1. "raspi-config.txt" has the settings I prefer for the "raspi-config" program.
2. Setup wifi access with the desktop "WiFi Networks Settings" program.
3. Run "sudo apt-get update"
3. Run "sudo apt-get upgrade"
4. Reboot
5. Run "sudo apt-get install -y git"
6. Run "git clone https://github.com/jmsaltzman/pi_setup" to get the repo
7. cd pi_setup
8. chmod 775 *sh
9. Run "bash_setup.sh"
10. Run "vnc_setup.sh" to set up vnc server.
11. Run "arduino_setup.sh" to install Arduino and to set up serial correctly.
12. This is a good time to save a system image :)

OpenCV setup takes a while, maybe overclock first (???)

1. Run "cv_tools_install_AR1.sh" to install 
2. Run "cv_tools_install_AR2.sh" to build and finish OpenCV installation. This will take hours! 
3. Run "cv_files_setup.sh"

. DON'T Run cv_tools_install.sh (chmod'ed to 775, run as sudo) to install CV packages! It doesn't work :(

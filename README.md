# pi_setup
Files for setting up a Raspberry Pi

Setting up a Raspberry Pi should be easier.

A new system has no shortcuts and often there are many packages to install. It can be annoying to go down a check-list when a good old .sh script will get the job done. That's the point of this repo: a place to keep files which can be wgotten as soon as the Pi gets online.

Order of operations:

1. raspi-config.txt has the settings I prefer for the "raspi-config" program.
2. Move .bash_aliases to ~/ to get aliases.
3. Add .bashrc_mods to ~/.bashrc to change the prompt.
4. Setup wifi access with the desktop "WiFi Networks Settings" program.
5. Run raspi_install1.sh (chmod'ed to 775, run as sudo) to get the initial installs (note: you kind of need to install git first or else you won't get any of these ;)
6. Run arduino_setup.sh (chmod'ed to 775, run as sudo) to install Arduino and to set up serial correctly.
7. Run cv_tools_install.sh (chmod'ed to 775, run as sudo) to install CV packages (work-in-progress)





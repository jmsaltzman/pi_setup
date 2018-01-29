#!/bin/sh

# Mostly from:
#   https://raspberrypi.stackexchange.com/questions/45976/how-do-i-update-java-8-in-raspbian

# Remove OpenJDK, might do nothing...
sudo apt-get purge openjdk*

# Install dirmngr since it's not in Stretch. Details here:
#   https://www.raspberrypi.org/forums/viewtopic.php?t=193536
sudo apt-get -y install dirmngr

# Add digital key
sudo apt-key adv --recv-key --keyserver keyserver.ubuntu.com EEA14886

# Add packet source
sudo cat /etc/apt/sources.list apt-get_java_mods > sources.list_new
sudo mv sources.list_new /etc/apt/sources.list

# Install Java 8
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default

# Remove old Java
sudo apt-get purge java7*
sudo apt-get autoremove

# Check success
java -version


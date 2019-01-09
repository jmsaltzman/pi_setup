#!/bin/sh -f

# Update apd database and upgrade installed software
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y update

# Install Synaptic for package management
sudo apt-get install -y synaptic

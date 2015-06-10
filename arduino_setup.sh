#!/bin/sh -f

# from http://razzpisampler.oreilly.com/ch10.html

#cd ~/Downloads
sudo apt-get update
sudo apt-get install -y arduino
wget https://github.com/wyolum/alamode/blob/master/bundles/alamode-setup.tar.gz?raw=true -O alamode-setup.tar.gz
tar -xvzf alamode-setup.tar.gz
cd alamode-setup
sudo ./setup

# reboot for changes to take effect

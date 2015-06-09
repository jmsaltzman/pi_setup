#!/bin/sh -f

# execute w/sudo

# from http://razzpisampler.oreilly.com/ch10.html

#cd ~/Downloads
apt-get update
apt-get install -y arduino
wget https://github.com/wyolum/alamode/blob/master/bundles/alamode-setup.tar.gz?raw=true -O alamode-setup.tar.gz
tar -xvzf alamode-setup.tar.gz
cd alamode-setup
./setup

# reboot for changes to take effect

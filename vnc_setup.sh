#!/bin/sh -f

# VNC
# details on tightvncserver setup:
# http://learn.adafruit.com/adafruit-raspberry-pi-lesson-7-remote-control-with-vnc
sudo apt-get install -y tightvncserver
vncserver :1
mkdir ~/.config/autostart
cp tightvnc.desktop ~/.config/autostart/

#!/bin/sh

# Install and configure Samba based on instructions here:
#   https://www.raspberrypi.org/magpi/samba-file-server/

# NOTE: UNTESTED

# Install the software
sudo apt-get install -y samba samba-common-bin

# Create share directory
sudo mkdir -m 1777 /home/share

# Add share section to /etc/samba/smb.conf:
sudo cat /etc/samba/smb.conf samba_mods > smb.conf_new
sudo mv smb.conf_new /etc/samba/smb.conf

# Set pi as a samba share user
sudo smbpasswd -a pi
# (then enter password twice)

# Restart samba service
sudo /etc/init.d/samba restart

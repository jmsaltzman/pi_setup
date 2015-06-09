#!/bin/sh -f

# execute w/sudo

apt-get update
apt-get upgrade

apt-get install -y git
# git book:
# https://git-scm.com/book/en/v2

apt-get install -y tightvncserver
# details on tightvncserver setup:
# http://www.howtogeek.com/141157/how-to-configure-your-raspberry-pi-for-remote-shell-desktop-and-file-transfer/all/


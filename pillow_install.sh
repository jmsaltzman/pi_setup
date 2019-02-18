#!/bin/sh

# Install python3 Pillow
# Mostly from: https://www.techcoil.com/blog/how-to-setup-python-imaging-library-pillow-on-raspbian-stretch-lite-for-processing-images-on-your-raspberry-pi/

# Install prerequisites
sudo apt-get install libjpeg62 -y
sudo apt-get install libjpeg62-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install libfreetype6-dev -y
sudo apt-get install liblcms1-dev -y
sudo apt-get install libopenjp2-7 -y
sudo apt-get install libtiff5 -y

# Still no good... will this help?
sudo apt-get install libjpeg-dev -y

# Nope

#pip3 install pillow
# I get:
# Command "/usr/local/bin/python3.6 -u -c "import setuptools, tokenize;__file__='/tmp/pip-install-mrf4khdg/pillow/setup.py';
# f=getattr(tokenize, 'open', open)(__file__);code=f.read().replace('\r\n', '\n');f.close();exec(compile(code, __file__, 
# 'exec'))" install --record /tmp/pip-record-jmtblzpb/install-record.txt --single-version-externally-managed --compile" 
# failed with error code 1 in /tmp/pip-install-mrf4khdg/pillow/

# Try with sudo?


pkgs = """libopencv-dev
build-essential
libavformat-dev
x264
v4l-utils
ffmpeg
libcv2.3
libcvaux2.3
libhighgui2.3
opencv-doc
libcv-dev
libcvaux-dev
libhighgui-dev
python-numpy
python-scipy
python-matplotlib
python-pandas
python-nose
libgtkglext1-dev
libpng12-0
libpng12-dev
libpng++-dev
libpng3
libpnglite-dev
zlib1g-dbg
zlib1g
zlib1g-dev
pngtools
libtiff4-dev
libtiff4
libtiffxx0c2
libtiff-tools
libjpeg8
libjpeg8-dev
libjpeg8-dbg
libavcodec-dev
libavcodec53
libavformat53
libgstreamer0.10-0-dbg
libgstreamer0.10-0
libgstreamer0.10-dev
libxine1-ffmpeg
libxine1-bin
libunicap2
libunicap2-dev
libdc1394-22-dev
libdc1394-22
libdc1394-utils
libv4l-0
libv4l-dev
libpython2.6
python-dev
python2.6-dev
libgtk2.0-dev
libswscale-dev
libjpeg-dev
libwebp-dev
libpng-dev
libtiff5-dev
libjasper-dev
libopenexr-dev
libgdal-dev
python-tk
python3-dev
python3-tk
python3-numpy
libeigen3-dev
python-opencv
libpngwriter0-dev
libpngwriter0c2
"""

import os, sys

sh_header = '#! /bin/csh -f'
notes = '''# execute w/sudo

# Package list from "Raspberry Pi Computer Vision Programming"
# by Ashwin Pajankar
# http://www.amazon.com/gp/product/1784398284
'''
cmd_prefix = 'apt-get install -y'

# Split packages and form command lines
pkgs = pkgs.split('\n')
lines = []
for pkg in pkgs:
    if pkg == '':
        continue
    line = '%s %s\n' % (cmd_prefix, pkg)
    lines.append(line)

# Form output sh file
fn = 'cv_tools_install.sh'
outfile = open(fn, 'w')
outfile.write(sh_header)
outfile.write(notes)
for line in lines:
    outfile.write(line)
outfile.close()
    
    







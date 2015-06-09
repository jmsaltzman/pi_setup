#!/bin/sh -f

set sipi_aerials="http://sipi.usc.edu/database/aerials.tar.gz"
set sipi_misc="http://sipi.usc.edu/database/misc.tar.gz"
set sipi_tx="http://sipi.usc.edu/database/textures.tar.gz"
set sipi_seq="http://sipi.usc.edu/database/sequences.tar.gz"
set ipp_standard="http://imageprocessingplace.com/downloads_V3/root_downloads/image_databases/standard_test_images.zip"

cd
mkdir book
cd book
mkdir code
mkdir output
mkdir test_set

cd code
set i=1
while [ $i < 10 ]
do
    mkdir chapter0$i
    @ i++
done
mkdir chapter10
    
cd ../test_set
wget $sipi_aerials
tar -xvf $sipi_aerials
wget $sipi_misc
tar -xvf $sipi_misc
wget $sipi_tx
tar -xvf $sipi_tx
wget $sipi_seq
tar -xvf $sipi_seq
wget $ipp_standard
unzip $ipp_standard



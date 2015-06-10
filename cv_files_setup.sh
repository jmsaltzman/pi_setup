#!/bin/sh -f

# Create directory tree
cd
mkdir book
cd book
mkdir code
mkdir output
mkdir test_set

cd code
mkdir chapter01
mkdir chapter02
mkdir chapter03
mkdir chapter04
mkdir chapter05
mkdir chapter06
mkdir chapter07
mkdir chapter08
mkdir chapter09
mkdir chapter10

# Get and unarchive test files
cd ../test_set

export sipi_aerials="http://sipi.usc.edu/database/aerials.tar.gz"
export sipi_misc="http://sipi.usc.edu/database/misc.tar.gz"
export sipi_tx="http://sipi.usc.edu/database/textures.tar.gz"
export sipi_seq="http://sipi.usc.edu/database/sequences.tar.gz"
export ipp_standard="http://imageprocessingplace.com/downloads_V3/root_downloads/image_databases/standard_test_images.zip"

wget $sipi_aerials
wget $sipi_misc
wget $sipi_tx
wget $sipi_seq
wget $ipp_standard

tar -xvf `basename $sipi_aerials`
tar -xvf `basename $sipi_misc`
tar -xvf `basename $sipi_tx`
tar -xvf `basename $sipi_seq`
unzip `basename $ipp_standard`

#rm `basename $sipi_aerials`
rm `basename $sipi_misc`
#rm `basename $sipi_tx`
#rm `basename $sipi_seq`
#rm `basename $ipp_standard`

echo "Done retrieving and unarchiving image files."

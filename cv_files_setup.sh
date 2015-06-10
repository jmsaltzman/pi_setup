#!/bin/sh -f

export sipi_aerials="http://sipi.usc.edu/database/aerials.tar.gz"
export sipi_misc="http://sipi.usc.edu/database/misc.tar.gz"
export sipi_tx="http://sipi.usc.edu/database/textures.tar.gz"
export sipi_seq="http://sipi.usc.edu/database/sequences.tar.gz"
export ipp_standard="http://imageprocessingplace.com/downloads_V3/root_downloads/image_databases/standard_test_images.zip"
echo $sipi_aerials

: <<'END'
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
END

echo "after comment block..."
#cd ../test_set

wget $sipi_aerials
tar -xvf `basename $sipi_aerials`

#wget $sipi_misc
#tar -xvf $sipi_misc
#wget $sipi_tx
#tar -xvf $sipi_tx
#wget $sipi_seq
#tar -xvf $sipi_seq
#wget $ipp_standard
#unzip $ipp_standard



#!/bin/sh
apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates  build-essential libfreetype6-dev libglu1-mesa-dev git cmake curl swig python3-dev
mkdir /opt/builder
cd /opt/builder
git clone --depth=1 https://github.com/tpaviot/oce
git clone --depth=1 https://github.com/tpaviot/pythonocc-core
echo building occ and pythonocc
mkdir /opt/output/artifact 
mkdir /opt/output/oce
cd /opt/output/oce
cmake /opt/builder/oce/
make all
make DESTDIR=/opt/output/artifact install
ldconfig
export OCE_DIR=/opt/output/artifact/usr/local/lib/
mkdir /opt/output/pythonocc
cd /opt/output/pythonocc
cmake /opt/builder/pythonocc-core
make all
make DESTDIR=/opt/output/artifact install 



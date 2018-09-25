#!/bin/sh

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



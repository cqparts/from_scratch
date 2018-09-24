#!/bin/sh

echo building occ and pythonocc

mkdir /opt/output/oce
cd /opt/output/oce
cmake /opt/builder/oce/
make all
make install

ldconfig

mkdir /opt/output/pythonocc
cd /opt/output/pythonocc
cmake /opt/builder/pythonocc-core
make all
make install 



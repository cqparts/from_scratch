# CQPARTS server build

This repository is for building pythonOCC , OCE , cadquery and cqparts from scratch on debian stable.

Requires docker.

Steps 

1. cd builder 
2. ./build.sh 

This will build a docker with all the requirements to build occ


3. ./make_occ.sh

build all the libs put them into data/artifact

this will take some hours to build

4. ./make_server.sh

this build the debian image and installs OCC and pythonocc 

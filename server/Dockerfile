FROM debian 

MAINTAINER <obeygiantrobot@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV CQ_HOME=/opt/cadquery

#from continuum: https://hub.docker.com/r/continuumio/anaconda/~/dockerfile/
RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    build-essential

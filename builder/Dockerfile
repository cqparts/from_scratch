FROM debian 

MAINTAINER <obeygiantrobot@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ENV CQ_HOME=/opt/cadquery

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    build-essential libfreetype6-dev libglu1-mesa-dev git cmake curl

RUN mkdir /opt/builder
WORKDIR /opt/builder

RUN git clone --depth=1 https://github.com/tpaviot/oce
RUN git clone --depth=1 https://github.com/tpaviot/pythonocc-core

COPY build_all.sh .

RUN mkdir /opt/output

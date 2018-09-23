FROM debian 

MAINTAINER <obeygiantrobot@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libfreetype6 libglu1 git curl python3 python3-pip


# install latest cadquery and cqparts from source

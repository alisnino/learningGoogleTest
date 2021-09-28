FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    software-properties-common \
    build-essential \
    wget

RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | apt-key add -

RUN apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'

RUN apt-get update && apt-get install -y \
    cmake \
    cmake-curses-gui

ARG APP_NAME
RUN mkdir /${APP_NAME} && mkdir /${APP_NAME}/src
COPY scripts/makeapp.sh /${APP_NAME}/
WORKDIR /${APP_NAME}/

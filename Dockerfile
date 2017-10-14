FROM ubuntu:16.04

RUN apt-get update && apt-get install -y dfu-util make bzip2

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y lib32z1 lib32ncurses5 libbz2-1.0:i386 curl

ENV gccfile gcc-arm-none-eabi-6-2017-q2-update-linux.tar.bz2
RUN curl -SL https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2017q2/${gccfile} \
 | tar -xjC /opt
RUN mkdir -p /opt
RUN chmod -R -w /opt/gcc-arm-none-eabi-6-2017-q2-update

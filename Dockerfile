FROM ubuntu:16.04

RUN apt-get update && apt-get install -y dfu-util make 

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y lib32z1 lib32ncurses5 libbz2-1.0:i386

ENV gccfile gcc-arm-none-eabi-6-2017-q2-update-linux.tar.bz2
ADD https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2017q2/${gccfile} /tmp/${gccfile}
RUN mkdir -p /opt
RUN cd /opt
RUN tar xjf /tmp/${gccfile}
RUN rm /tmp/${gccfile}
RUN chmod -R -w /opt/gcc-arm-none-eabi-6-2017-g2-update

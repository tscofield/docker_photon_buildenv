FROM ubuntu:16.04

RUN apt-get update && apt-get install -y dfu-util make 

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y lib32z1 lib32ncurses5 libbz2-1.0:i386

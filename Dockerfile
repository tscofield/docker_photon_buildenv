FROM ubuntu:16.04

RUN apt-get update && apt-get install dfu-util make 

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install lib32z1 lib32ncurses5 libbz2-1.0:i386

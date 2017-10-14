FROM ubuntu:16.04

RUN apt-get update && apt-get install dfu-util make lib32z1 lib32ncurses5 lib32bz2-1.0

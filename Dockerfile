FROM ubuntu:16.04

RUN apt-get update && apt-get install dfu-util make gcc-arm-embedded

FROM ubuntu:16.04

ADD imageFiles /u16

RUN /u16/install.sh && rm -rf /tmp && mkdir /tmp

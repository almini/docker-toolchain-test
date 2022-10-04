# Build and run:
#   docker build -t clion-env .

FROM ubuntu:20.04

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install tzdata

RUN apt-get update \
  && apt-get install -y build-essential \
      gcc \
      g++ \
      gdb \
      ninja-build \
      cmake \
  && apt-get clean

RUN rm /usr/bin/gcc && \
    mkdir /opt/bin && \
    ln -s /usr/bin/gcc-9 /opt/bin/gcc

ENV PATH="/opt/bin:${PATH}"
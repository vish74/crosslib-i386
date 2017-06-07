FROM i386/ubuntu:16.04

LABEL maintainer Vish "vishvesh@litmusloop.com"

RUN apt-get update && apt-get install -y \
  build-essential autoconf libtool \
  pkg-config \
  automake \
  autogen \
  bash \
  bc \
  bzip2 \
  ca-certificates \
  curl \
  file \
  git \
  gzip \
  zip \
  make \
  ncurses-dev \
  python \
  python-pip \
  rsync \
  sed \
  bison \
  flex \
  tar \
  pax \
  vim \
  wget \
  runit \
  xz-utils && \
  apt-get clean --yes

RUN apt-get update && apt-get install -y \
  g++-multilib libc6-dev-i386  && \
  apt-get clean --yes

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

RUN export NVM_DIR=~/.nvm && /bin/bash ~/.nvm/nvm.sh

RUN /bin/bash nvm install v6.10.2

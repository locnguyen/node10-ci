FROM node:10-alpine

LABEL maintainer="lochnguyen@gmail.com"

RUN apk --no-cache add \
  g++ \
  gcc \
  libgcc \
  libstdc++ \
  linux-headers \
  make \
  python \
  wget \
  curl \
  bash \
  iptables \
  ca-certificates \
  vips-dev \
  fftw-dev \
  git \
  python-dev \
  py-pip \
  build-base \
  --update-cache \
  --repository https://dl-3.alpinelinux.org/alpine/edge/testing/ \
  --repository http://nl.alpinelinux.org/alpine/edge/main

RUN pip install virtualenv \
  && rm -fr /var/cache/api/*

RUN npm install -g node-gyp
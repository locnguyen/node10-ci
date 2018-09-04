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
  fftw-dev --update-cache \
  --repository https://dl-3.alpinelinux.org/alpine/edge/testing/
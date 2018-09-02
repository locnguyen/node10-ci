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
  curl
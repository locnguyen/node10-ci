FROM node:10-alpine

LABEL maintainer="lochnguyen@gmail.com"

ADD ./wrapdocker /usr/local/bin/wrapdocker

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
  e2fsprogs \
  docker \
  && chmod +x /usr/local/bin/wrapdocker \
  && rm -rf /var/cache/apk/*

VOLUME /var/lib/docker
CMD ["wrapdocker"]
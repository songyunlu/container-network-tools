FROM alpine:3.7

LABEL maintainer="Jimmy Lu <gn00023040@gmail.com>"

ENV DI_VERSION=1.2.0 \
    DI_SHA=81231da1cd074fdc81af62789fead8641ef3f24b6b07366a1c34e5b059faf363

RUN set -xe \
    && apk update && apk upgrade \
    && apk add --no-cache --update \
       curl \
       wget \
       iputils\
       bind-tools \
       net-tools \
       iw \
       wireless-tools \
       iperf \
       tcpdump \
       nmap \
       netcat-openbsd \
       procps \
       nginx \
       vim \
    && mkdir /run/nginx \
    && curl -sLo /sbin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v${DI_VERSION}/dumb-init_${DI_VERSION}_amd64 \
    && echo "$DI_SHA  /sbin/dumb-init" | sha256sum -c - \
    && chmod +x /sbin/dumb-init \
    && rm -rf \
          /var/cache/apk/* \
          /tmp/*

CMD ["/sbin/dumb-init", "sh", "-c", "while true; do sleep 3600; done"]

FROM gcr.io/google_containers/ubuntu-slim:0.14

LABEL maintainer="Jimmy Lu <gn00023040@gmail.com>"

ENV DI_VERSION=1.2.0 \
    DI_SHA=81231da1cd074fdc81af62789fead8641ef3f24b6b07366a1c34e5b059faf363

RUN apt-get update \
    && apt-get install -y \
       curl \
       wget \
       iputils-ping \
       dnsutils \
       net-tools \
       iproute2 \
       iw \
       wireless-tools \
       iperf \
       tcpdump \
       nmap \
       hping3 \
       netcat \
       traceroute \
       telnet \
       procps \
       nginx \
       vim \
    && mkdir /run/nginx \
    && curl -sLo /sbin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v${DI_VERSION}/dumb-init_${DI_VERSION}_amd64 \
    && echo "$DI_SHA  /sbin/dumb-init" | sha256sum -c - \
    && chmod +x /sbin/dumb-init \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf \
          doc \
          man \
          info \
          locale \
          common-licenses \
          ~/.bashrc \
          /var/lib/apt/lists/* \
          /var/log/* \
          /var/cache/debconf/* \
          /etc/systemd \
          /lib/lsb \
          /lib/udev \
          /usr/share/doc/ \
          /usr/share/doc-base/ \
          /usr/share/man/ \
          /tmp/*

CMD ["/sbin/dumb-init", "sh", "-c", "while true; do sleep 3600; done"]

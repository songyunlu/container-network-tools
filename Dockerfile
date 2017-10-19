FROM gcr.io/google_containers/ubuntu-slim:0.14
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
       telnet
CMD sh -c 'while true; do sleep 3600; done'

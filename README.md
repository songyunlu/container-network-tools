# container-network-tools

Dockerfile for building images that contains most of networking tools for container network troubleshooting.

Following packages are included
* curl 
* wget 
* iputils-ping 
* dnsutils 
* net-tools 
* iproute2 
* iw 
* wireless-tools 
* iperf 
* tcpdump 
* nmap 
* hping3 
* netcat

The container starts in a infinte loop, so please run the container in the detach mode via `docker run --rm -d gn00023040/container-network-tools`.

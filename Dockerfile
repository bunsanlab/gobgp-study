FROM ubuntu:16.04

RUN apt-get update && apt-get install -y iproute2 iputils-ping net-tools tcpdump iptables traceroute lsof openssh-server vim quagga
ADD gobgp /root/gobgp
ADD gobgpd /root/gobgpd
ADD bgp.conf /root/bgp.conf
ADD daemons /etc/quagga/daemons
RUN cp /usr/share/doc/quagga/examples/zebra.conf.sample /etc/quagga/zebra.conf
RUN /etc/init.d/quagga restart




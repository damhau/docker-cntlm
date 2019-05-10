FROM debian:sid
MAINTAINER Damien Hauser <damien@dhconsulting.ch>
RUN apt-get update && apt-get install -y gcc make && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD scripts/init_container.sh /usr/local/sbin/init_container.sh
ADD files/etc/cntlm.conf /etc/cntlm.conf
ADD files/cntlm-0.92.3/ /usr/local/src/cntlm-0.92.3/
EXPOSE 3128
CMD init_container.sh



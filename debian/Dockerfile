FROM debian:jessie

MAINTAINER Ben Olsen "me@bensentorpy.com"

RUN apt-get update && \
	apt-get install -y unzip  vim-tiny wget openssh-server  && \
	apt-get clean

RUN mkdir /var/run/sshd && \
	echo root:docker | chpasswd && \
	sed "s/without-password/yes/g" /etc/ssh/sshd_config > /etc/ssh/sshd_config2 && \
	sed "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config2 > /etc/ssh/sshd_config

# Expose ssh port
EXPOSE 22 

CMD ["/usr/sbin/sshd", "-D"]
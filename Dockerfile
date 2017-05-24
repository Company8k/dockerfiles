FROM debian
MAINTAINER Eightk <company@eigh.tk>

RUN apt-get update && apt-get install -y lighttpd #&& rm -rf /var/cache/apt/*
ADD conf /etc/lighttpd/conf.d/
ADD lighttpd.conf /etc/lighttpd/lighttpd.conf

ENTRYPOINT ["/usr/sbin/lighttpd"]

FROM debian
MAINTAINER Eightk <company@eigh.tk>

RUN apt update && apt install -y lighttpd #&& rm -rf /var/cache/apt/*
ADD conf /etc/lighttpd/conf.d/

ENTRYPOINT ["/usr/bin/lighttpd"]

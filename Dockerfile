FROM debian
MAINTAINER Eightk <company@eigh.tk>

ADD conf /etc/lighttpd/conf.d/
RUN apt-get update && apt-get install -y lighttpd && apt-get clean \
    && echo "include \"conf.d/cgi.conf\"" >> /etc/lighttpd/lighttpd.conf

ENTRYPOINT ["/usr/sbin/lighttpd"]

FROM debian
MAINTAINER Eightk <company@eigh.tk>

RUN apt-get update && apt-get install -y lighttpd && apt-get clean \
    && echo "include \"conf.d/cgi.conf\"" >> /etc/lighttpd/lighttpd.conf
ADD conf /etc/lighttpd/conf.d/

ENTRYPOINT ["lighttpd"]

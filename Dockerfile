FROM debian
MAINTAINER Eightk <company@eigh.tk>

##install opensips
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 049AD65B && echo "deb http://apt.opensips.org jessie 2.3-releases" >>/etc/apt/sources.list \
    && apt-get update && apt-get install -y opensips

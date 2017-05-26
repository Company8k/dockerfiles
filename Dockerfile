FROM debian
MAINTAINER Eightk <company@eigh.tk>

ENV DBENGINE=DBTEXT

##install opensips
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 049AD65B && echo "deb http://apt.opensips.org jessie 2.3-releases" >>/etc/apt/sources.list \
    && apt-get update && apt-get install -y opensips \
    && touch /var/run/opensips.pid
##configure db
ADD conf/opensipsctlrc /etc/opensips
RUN opensipsdbctl create
CMD opensips -f /etc/opensips/opensips.cfg -w /var/tmp -P /run/opensips.pid

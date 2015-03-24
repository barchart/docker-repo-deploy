#
# Dockerup management container
#
# docker-build properties:
# TAG=barchart/repo-deploy:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

ENV HOME /etc/repo-deploy

RUN apt-get -y update && \
	apt-get -y install git && \
	pip install repo-deploy

ADD ssh/config /root/.ssh/config

VOLUME ["/var/deploy"]

ENTRYPOINT ["/usr/local/bin/repo-deploy"]

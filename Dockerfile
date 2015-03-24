#
# Dockerup management container
#
# docker-build properties:
# TAG=barchart/repo-deploy:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

RUN apt-get -y update && \
	apt-get -y install git python-dev libffi-dev libssl-dev && \
	pip install repo-deploy pyopenssl ndg-httpsclient pyasn1

ADD ssh/config /root/.ssh/config

VOLUME ["/var/deploy"]

ENTRYPOINT ["/usr/local/bin/repo-deploy"]

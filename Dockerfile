#
# Dockerup management container
#
# docker-build properties:
# TAG=barchart/repo-deploy:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

ENV HOME /etc/repo-deploy

RUN pip install repo-deploy

ADD etc/ /etc/

VOLUME ["/var/deploy"]

ENTRYPOINT ["/usr/local/bin/repo-deploy"]

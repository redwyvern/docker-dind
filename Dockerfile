FROM docker:20.10.2-dind

RUN apk add --no-cache bash

COPY ./ca-certificates /usr/local/share/ca-certificates
RUN update-ca-certificates

COPY ca-certificates/redwyvern/redwyvern-ca.crt /etc/docker/certs.d/docker.artifactory.weedon.org.au/ca.crt


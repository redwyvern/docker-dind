DIND
====
This is a minor customization of the official Docker DIND image.

The additional configuration in this image simply adds a CA certificate and makes docker aware of it.

Example YAML file:
```
version: '3'

services:
  dind:
    image: docker.artifactory.weedon.org.au/redwyvern/dind
    container_name: dind
    hostname: dind
    privileged: true
    restart: always
    dns: 192.168.1.50
    networks:
      - dev_nw

networks:
  dev_nw:
```

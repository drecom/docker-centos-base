# docker-centos-base
[![Docker Hub Status](https://dockerbuildbadges.quelltext.eu/status.svg?organization=drecom&repository=centos-base)](https://hub.docker.com/r/drecom/centos-base/)
[![CircleCI](https://circleci.com/gh/drecom/docker-centos-base/tree/master.svg?style=svg)](https://circleci.com/gh/drecom/docker-centos-base/tree/master)

A CentOS docker container

It's on [docker-hub](https://hub.docker.com/r/drecom/centos-base/) and [github](https://github.com/drecom/docker-centos-base/)

## tags and links
* `latest` [(master/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/master/Dockerfile)
* `centos7.4.1708` [(centos7.4.1708/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos7.4.1708/Dockerfile)
* `centos7.3.1611` [(centos7.3.1611/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos7.3.1611/Dockerfile)
* `centos7.2.1511` [(centos7.2.1511/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos7.2.1511/Dockerfile)
* `centos7.1.1503` [(centos7.1.1503/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos7.1.1503/Dockerfile)
* `centos7.0.1406` [(centos7.0.1406/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos7.0.1406/Dockerfile)
* `centos7` [(centos7/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos7/Dockerfile)
* `centos6.7` [(centos6.7/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos6.7/Dockerfile)
* `centos6.6` [(centos6.6/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos6.6/Dockerfile)
* `centos6` [(centos6/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos6/Dockerfile)
* `centos5.11` [(centos5.11/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos5.11/Dockerfile)
* `centos5` [(centos5/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/centos5/Dockerfile)
* `7.2.1511` [(7.2.1511/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/7.2.1511/Dockerfile)
* `7.1.1503` [(7.1.1503/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/7.1.1503/Dockerfile)
* `7.0.1406` [(7.0.1406/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/7.0.1406/Dockerfile)
* `7` [(7/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/7/Dockerfile)
* `6.7` [(6.7/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/6.7/Dockerfile)
* `6.6` [(6.6/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/6.6/Dockerfile)
* `6` [(6/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/6/Dockerfile)
* `5.11` [(5.11/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/5.11/Dockerfile)
* `5` [(5/Dockerfile)](https://github.com/drecom/docker-centos-base/blob/5/Dockerfile)

## how to build

```sh
docker build --rm -t centos-build .
```

## running

```sh
docker run -it --rm drecom/centos-base /bin/bash
```

# CentOS
#
# VERSION               0.0.1

FROM     centos:latest

MAINTAINER Gen Takahashi "gen.takahashi@drecom.co.jp"

#RUN rpm -ivh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum install -y \
    wget \
    curl \
    git \
    dtach \
    vim \
    hash-slinger \
    bzip2 \
    tar \
    nodejs \
&&  yum clean all

RUN \cp -p /usr/share/zoneinfo/Japan /etc/localtime \
&&  echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock


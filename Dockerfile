# CentOS
#
# VERSION               0.0.1

FROM     centos:latest

MAINTAINER Drecom Technical Development Department "pr_itn@drecom.co.jp"

#RUN rpm -ivh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum install -y \
    epel-release \
    openssl-devel \
    readline-devel\
    zlib-devel \
    wget \
    curl \
    git \
    dtach \
    vim \
    hash-slinger \
    bzip2 \
    tar \
    ImageMagick \
    ImageMagick-devel \
    libffi-devel \
    mysql \
    mysql-devel \
    libxslt-devel \
    redis \
    python \
&&  yum groupinstall "Development Tools" -y \
&&  yum clean all

# node.js LTS install
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - \
    && yum -y install nodejs \
    && npm -g up

# pip install
RUN wget https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py

# s3cmd install
RUN pip install s3cmd

# phantomjs install
ENV PHANTOMJS_VERSION 2.1.1
RUN wget -U "wget" --wait=5 https://github.com/Medium/phantomjs/releases/download/v2.1.1/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 \
&&  tar xf phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 \
&&  mv     phantomjs-${PHANTOMJS_VERSION}-linux-x86_64/bin/phantomjs /usr/bin/phantomjs \
&&  rm -rf phantomjs-${PHANTOMJS_VERSION}-linux-x86_64 \
&&  rm     phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2

# defaultのlocaleをja_JP.UTF-8にする
ENV LANG=ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

RUN \cp -p /usr/share/zoneinfo/Japan /etc/localtime \
&&  echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock

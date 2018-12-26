FROM  centos:7.3.1611
LABEL maintainer "Drecom Technical Development Department <pr_itn@drecom.co.jp>"

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
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash - \
    && yum -y install nodejs \
    && npm -g up

# yarn install
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# pip install
RUN wget https://bootstrap.pypa.io/get-pip.py \
&&  python get-pip.py

# Change default locale to ja-JP.UTF-8
ENV LANG=ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

RUN \cp -p /usr/share/zoneinfo/Japan /etc/localtime \
&&  echo 'ZONE="Asia/Tokyo"' > /etc/sysconfig/clock

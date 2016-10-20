FROM centos:7.0.1406
MAINTAINER vegawong <vegawong@163.com>

RUN yum -y remove fakesystemd && \
    yum -y install systemd && \
    yum -y install wget && \
    yum install -y tar.x86_64 && \
    yum -y install which && \
    yum -y install git && \
    yum -y install gcc automake autoconf libtool make && \
    yum clean all

# 下载nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

# nvm 安装node v6.5.0
RUN export PATH="/root/.nvm:$PATH" && bash -l -c "nvm install v6.5.0"

# 安装 yarn
RUN bash -l -c "npm install -g yarn"
RUN bash -l -c "yarn config set registry https://registry.npm.taobao.org"

# 设置PATH
ENV PATH /root/.nvm/versions/node/v6.5.0/bin:$PATH

# Copy over private key, and set permissions
ADD .ssh /root/.ssh
RUN chmod 700 /root/.ssh/*
RUN chown -R root:root /root/.ssh





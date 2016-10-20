FROM centos:7.0.1406
MAINTAINER vegawong <vegawong@163.com>

RUN yum -y update && \
    yum remove fakesystemd && \
    yum -y install systemd && \
    yum -y install wget && \
    yum install -y tar.x86_64 && \
    yum -y install which && \
    yum -y install git && \
    yum clean all

# 下载nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

# nvm 安装node v6.5.0
RUN export PATH="/root/.nvm:$PATH" && bash -l -c "NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node nvm install v6.5.0"



# 安装 yarn
RUN wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo && yum install yarn


FROM registry.cn-hangzhou.aliyuncs.com/vega/centos-node:v6.5.0
MAINTAINER vegawong <vegawong@163.com>


# 安装 yarn
RUN bash -l -c "npm install --registry=https://registry.npm.taobao.org -g yarn"
RUN bash -l -c "yarn config set registry https://registry.npm.taobao.org"

# Copy over private key, and set permissions
ADD .ssh /root/.ssh
RUN chmod 700 /root/.ssh/*
RUN chown -R root:root /root/.ssh





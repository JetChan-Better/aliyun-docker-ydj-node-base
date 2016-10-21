FROM registry.cn-hangzhou.aliyuncs.com/vega/centos-node:v6.5.0
MAINTAINER vegawong <vegawong@163.com>


# 安装 yarn
RUN npm install --registry=https://registry.npm.taobao.org -g yarn
RUN yarn config set registry https://registry.npm.taobao.org

# Copy over private key, and set permissions
ADD .ssh /root/.ssh
RUN chmod 700 /root/.ssh/*
RUN chown -R root:root /root/.ssh

# 安装front-end-util
RUN mkdir /root/tools
RUN cd /root/tools && git clone git@gitlab.jingzhuan.cn:huangxiongwei/front-end-util.git && yarn link




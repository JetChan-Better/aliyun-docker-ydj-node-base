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
RUN cd /root/tools && \
    git clone git@gitlab.jingzhuan.cn:huangxiongwei/front-end-util.git && \
    cd front-end-util && \
    yarn && \
    npm link

# 安装pm2(nodejs应用托管和部署)
RUN yarn global add pm2

# 安装 webpack
RUN yarn global add webpack



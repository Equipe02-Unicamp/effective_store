FROM ubuntu:20.04

RUN apt-get -qq update && \
    apt-get -qq install --yes --no-install-recommends locales curl git htop python3-pip less unzip gnupg mongodb-clients mongo-tools
# Set up locales properly
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ENV SHELL /bin/bash

COPY ./ ./
RUN pip3 install jupyterlab jupyter-server-proxy
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs && npm install -g --unsafe-perm ijavascript
RUN ijsinstall

WORKDIR /jupyter/data/

EXPOSE "8888"

FROM ubuntu:20.04

RUN apt-get -qq update && \
    apt-get -qq install --yes --no-install-recommends locales curl git htop vim wget python3-pip less unzip gnupg systemd
# Set up locales properly
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ENV SHELL /bin/bash

WORKDIR /jupyter/data/

COPY ./ ./

# building the repo
RUN pip3 install -r ./requirements.txt

# Specify the default command to run
CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]

CMD jupyter-lab --ip=0.0.0.0 --port=8888 --no-browser --notebook-dir=/jupyter/data --allow-root --NotebookApp.token=''

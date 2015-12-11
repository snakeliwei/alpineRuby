From alpine:latest
MAINTAINER Lyndon li <snakeliwei@gmail.com>

RUN apk update && apk upgrade && \
    apk add --update bash curl tar gpg && \
    rm -rf /var/cache/apk/*

#RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable

ENTRYPOINT ["/bin/bash"]



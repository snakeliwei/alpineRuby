From alpine:3.2
MAINTAINER Lyndon li <snakeliwei@gmail.com>

RUN apk update && apk upgrade && \
    apk add --update bash curl && \
    rm -rf /var/cache/apk/*

RUN curl -s raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash -s stable

ENTRYPOINT ["/bin/bash"]



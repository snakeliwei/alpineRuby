From alpine:3.2
MAINTAINER Lyndon li <snakeliwei@gmail.com>

RUN apk update && apk upgrade && \
    apk add --update bash && \
    rm -rf /var/cache/apk/*

RUN bash -s stable <<(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

ENTRYPOINT ["/bin/bash"]



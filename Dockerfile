FROM node:lts-alpine

RUN apk add --no-cache bash git openssh-client

ADD bump.sh /usr/local/bin/

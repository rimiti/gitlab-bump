FROM node:lts

RUN apk add --no-cache bash git openssh-client

ADD bump /usr/local/bin/

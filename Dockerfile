###
# swagger-ui - https://github.com/wordnik/swagger-ui/
#
# Container for building the swagger-ui static site
###

FROM    ubuntu:14.04
MAINTAINER dnephin@gmail.com 

ENV     DEBIAN_FRONTEND noninteractive

RUN     apt-get update && apt-get install -y git npm nodejs
RUN     ln -s /usr/bin/nodejs /usr/local/bin/node

WORKDIR /build
ADD     package.json    /build/package.json
RUN     npm install


RUN     apt-get install -y openjdk-7-jre

ADD     .   /build


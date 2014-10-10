###
# swagger-ui - https://github.com/wordnik/swagger-ui/
#
# Container for building the swagger-ui static site
###

FROM    ubuntu:14.04
MAINTAINER dnephin@gmail.com 

ENV     DEBIAN_FRONTEND noninteractive

RUN     apt-get update && apt-get install -y git npm nodejs openjdk-7-jre
RUN     ln -s /usr/bin/nodejs /usr/local/bin/node

WORKDIR /build
ADD     package.json    /build/package.json
RUN     npm install

ADD     .   /build
RUN     npm run-script build

RUN     apt-get install nginx

WORKDIR /build/dist
CMD     run.sh

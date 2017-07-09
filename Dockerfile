
# Set the base image to Ubuntu
FROM ubuntu:14.04

MAINTAINER Armando Mendivil

# Install Node.js and other dependencies
RUN apt-get update && \
    apt-get -y install curl && \
    apt-get -y install git && \
    apt-get -y install wget && \
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
    apt-get install --yes nodejs

EXPOSE 3000


WORKDIR /app

ADD package.json /app/
RUN npm install

ADD . /app

CMD ["node", "server"]

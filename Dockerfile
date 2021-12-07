FROM ubuntu:latest

MAINTAINER Nagaraj

ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . .

RUN apt-get update

RUN apt-get install nodejs npm -y

CMD npm start

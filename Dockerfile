FROM ubuntu:latest
MAINTAINER Drew Leske <drew.leske@computecanada.ca>

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install ruby ruby-dev rubygems build-essential rpm less
RUN gem install --no-document fpm
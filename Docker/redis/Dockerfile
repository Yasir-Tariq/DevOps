FROM ubuntu:12.04

MAINTAINER yasir

RUN apt-get update -y && apt-get install redis-server -y && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN service redis-server start

FROM node:lts-alpine

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

VOLUME /var/lib/docker

# Install dependencies
RUN apk add openjdk11 curl

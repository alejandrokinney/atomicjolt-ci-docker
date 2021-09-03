FROM node:14-alpine3.11

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

# Install dependencies
RUN apk update --no-cache && \
    apk add cmake postgresql-client postgresql ruby-dev && \
    gem install bundler

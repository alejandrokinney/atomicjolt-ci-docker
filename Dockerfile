FROM node:14-alpine3.14

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

# Install dependencies
RUN apk update --no-cache && \
    apk add cmake postgresql-client ruby-dev ruby-full build-base \
      curl-dev git postgresql-dev yaml-dev zlib-dev yarn cmake tzdata \
      shared-mime-info && \
    gem install bundler

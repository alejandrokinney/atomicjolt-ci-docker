FROM node:12-buster

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

# Install dependencies
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -  && \
    echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list && \
    apt-get update -yqqq && \
    apt-get install -y -qq cmake postgresql-client mongodb-org postgresql ruby-dev && \
    gem install bundler:1.17.3

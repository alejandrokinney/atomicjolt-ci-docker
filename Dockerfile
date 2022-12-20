FROM public.ecr.aws/docker/library/node:16-alpine3.16

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

VOLUME /var/lib/docker

# Install dependencies
RUN apk add openjdk11 curl aws-cli

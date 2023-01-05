FROM public.ecr.aws/docker/library/node:16-alpine3.16

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

VOLUME /var/lib/docker

# Install dependencies
RUN apk add openjdk11 curl aws-cli postgresql14
RUN mkdir /run/postgresql && chown postgres:postgres /run/postgresql/
RUN (addgroup -S postgres && adduser -S postgres -G postgres || true)
RUN mkdir -p /var/lib/postgresql/data && chmod -R 777 /var/lib/postgresql/data && chown -R postgres:postgres /var/lib/postgresql/data
RUN su - postgres -c "initdb /var/lib/postgresql/data"
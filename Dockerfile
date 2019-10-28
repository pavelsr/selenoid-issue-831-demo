FROM alpine:3.10

LABEL maintainer "Pavel Serikov <pavelsr@cpan.org>"

RUN apk update && \
  apk add g++ make perl perl-dev expat-dev curl && \
  curl -fsSL --compressed https://git.io/cpm > /usr/local/bin/cpm && \
  chmod +x /usr/local/bin/cpm && \
  cpm install -gv Selenium::Remote::Driver

WORKDIR /app


FROM ruby:alpine

WORKDIR travis

RUN apk add --no-cache build-base git && \
    gem install travis && \
    gem install travis-lint && \
    apk del build-base

VOLUME /travis

FROM debian:buster-slim

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update &&  apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -

RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
  nodejs \
  git \
  build-essential \
  wget \
  unzip \
  openssh-client \
  sshpass \
  dh-autoreconf \
  && rm -rf /var/lib/apt/lists/*

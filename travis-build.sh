#!/usr/bin/env bash

#### halt script on error
set -xe

#### Build the Docker Images
if [ -n "${VERSION}" ]; then
    docker build -f ./Dockerfile-${VERSION} .
fi

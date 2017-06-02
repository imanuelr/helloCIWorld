#!/bin/bash

set -x

export TERM=${TERM:-dumb}
cd app-repository
chmod +x gradlew

./gradlew --no-daemon build

git clone resource-share updated-gist
ls -la
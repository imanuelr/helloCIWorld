#!/bin/bash

set -x

export TERM=${TERM:-dumb}

ls -la

cd app-repository
chmod +x gradlew

./gradlew --no-daemon build
cd build/
ls -la

cd ../..

git clone resource-share updated-gist

ls -la
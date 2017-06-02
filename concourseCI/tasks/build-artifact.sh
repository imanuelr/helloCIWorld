#!/bin/bash

set -x
export TERM=${TERM:-dumb}

chmod +x app-repository/gradlew
./app-repository/gradlew --no-daemon build

git clone resource-share updated-gist
rm -rf updated-gist/build
cp -a app-repository/build updated-gist

cd updated-gist
git add .
git commit -m "Push new artifacts"
#!/bin/bash

set -x
export TERM=${TERM:-dumb}

chmod +x app-repository/gradlew
./app-repository/gradlew --no-daemon build

ls -la app-repository
ls -la app-repository/build

git clone resource-share updated-gist
rm -rf updated-gist/build
cp -a app-repository/build updated-gist

cd updated-gist

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add .
git commit -m "Push new artifacts"
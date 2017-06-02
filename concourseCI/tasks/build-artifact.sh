#!/bin/bash

set -x
export TERM=${TERM:-dumb}

cd app-repository
chmod +x gradlew
./gradlew --no-daemon build

ls -la
ls -la build
cd ..

git clone resource-share updated-gist
rm -rf updated-gist/build
cp -a app-repository/build updated-gist

cd updated-gist

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add .
git commit -m "Push new artifacts"
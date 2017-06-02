#!/bin/bash

export TERM=${TERM:-dumb}
cd source-repo
./gradlew --no-daemon build
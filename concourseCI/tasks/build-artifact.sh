#!/bin/bash

export TERM=${TERM:-dumb}
cd app-repository
./gradlew --no-daemon build
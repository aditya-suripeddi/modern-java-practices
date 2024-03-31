#/usr/bin/env bash

if ! command -v earthly >/dev/null; then
    echo "$0: No Earthly found in PATH"
    exit 2
fi

set -e

# Provide nicer console output via formatting and color
# See https://github.com/binkley/shell/blob/master/color/color.sh
printf -v preset "\e[0m"
printf -v pbold "\e[1m"

echo 
echo "${pbold}BUILD WITH GRADLE UNDER EARTHLY${preset}" 
earthly +build-with-gradle 
echo "${pbold}RUN WITH GRADLE UNDER EARTHLY${preset}" 
earthly +run-with-gradle 

echo 
echo "${pbold}BUILD WITH MAVEN UNDER EARTHLY${preset}" 
earthly +build-with-maven 
echo "${pbold}RUN WITH MAVEN UNDER EARTHLY${preset}" 
earthly +run-with-maven

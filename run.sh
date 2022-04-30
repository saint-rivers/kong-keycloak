#!/bin/bash

function checkFor() {
  command -v "$1" >/dev/null 2>&1 || {
    echo >&2 "$1 is not installed.  Aborting."
    exit 1
  }
}

function buildProject() {
  docker container stop "$(docker ps -a -q)"
  checkFor mvn
  mvn clean install
}


# clean up
/bin/bash clear.sh


# start services
mvn clean install
docker-compose -f docker-compose.yml up -d --build

# update kong configuration
sleep 1s
deck ping
deck sync

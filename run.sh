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
# docker container stop $(docker ps -aq)
# docker container rm $(docker ps -aq)
# docker container prune -f 
# docker volume prune -f

/bin/bash clear.sh


# start services
# mvn clean install
docker-compose -f docker-compose.yml up -d --build

# docker-compose -f kong-gateway/docker-compose.yml up -d --build
# docker-compose -f auth-service/docker-compose.yml up -d

# sleep 1s
# pushd kong-gateway || exit
# deck ping
# deck sync
# popd || exit

deck ping
deck sync

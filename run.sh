#!/bin/bash

help() {
  echo "help menu"
}

case $1 in
run)
  docker-compose -f docker-compose.yml up -d --build
  exit 1
  ;;
clear)
  docker-compose down
  docker container rm $(docker ps -aq)
  exit 1
  ;;
check)
  docker-compose ps
  exit 1
  ;;
restart)
  docker-compose -f docker-compose.yml down
  docker container rm $(docker ps -aq)
  docker-compose -f docker-compose.yml up -d --build
  exit 1
  ;;
*)
  echo "Error: Unrecognized command. Please refer to the documentation for all functionality."
  exit 1
  ;;
esac

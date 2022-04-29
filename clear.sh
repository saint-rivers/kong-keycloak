#!/bin/bash
# clean up
docker container stop $(docker ps -aq)
docker container rm $(docker ps -aq)
docker container prune -f 
docker volume prune -f

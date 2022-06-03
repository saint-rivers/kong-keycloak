#!/bin/bash

# curl -X DELETE 'http://localhost:8001/services/test-api/plugins/'

export HOST="http://saintrivers.tech:8800/auth/realms/myrealm/.well-known/openid-configuration"

curl -X POST \
  --url http://localhost:8001/services/test-api/plugins \
  --data "name=oidc" \
  --data "config.client_id=myclient" \
  --data "config.client_secret=0VvCNsz560uplf6nQm5y9jMsm1ZpbaF6" \
  --data "config.discovery=$HOST" \
  --data "config.realm=myrealm"

# this redirects properly but google cannot redirect to a private ip address
# 172.26.0.5
# this one is the private ip of the docker container

# 128.199.164.171
# this is the server of my ip

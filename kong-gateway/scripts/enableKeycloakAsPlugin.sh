#!/bin/bash

# curl -X DELETE 'http://localhost:8001/services/test-api/plugins/'

curl -X POST \
  --url http://localhost:8001/services/test-api/plugins \
  --data "name=oidc" \
  --data "config.client_id=myclient" \
  --data "config.client_secret=0VvCNsz560uplf6nQm5y9jMsm1ZpbaF6" \
  --data "config.discovery=http://host.docker.internal:8800/auth/realms/myrealm/.well-known/openid-configuration" \
  --data "config.realm=myrealm"


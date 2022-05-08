#!/bin/bash

curl --location --request POST 'http://localhost:8001/services' \
    --data 'name=auth-api' \
    --data 'url=http://keycloak-service:8080'

curl --location --request POST 'http://localhost:8001/services/auth-api/routes' \
    --data 'hosts[]=auth-api' \
    --data 'strip_path=false' \
    --data 'methods[]=GET'

curl --location --request GET 'http://localhost:8000/api/test/unsecured' \
    --header 'Host: test-service'

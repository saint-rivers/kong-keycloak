#!/bin/bash

curl --location --request POST 'http://localhost:8001/services' \
    --data 'name=test-service' \
    --data 'url=http://test-service:8081'

curl --location --request POST 'http://localhost:8001/services/test-service/routes' \
    --data 'hosts[]=test-service' \
    --data 'paths[]=/api/test/unsecured' \
    --data 'strip_path=false' \
    --data 'methods[]=GET'

curl --location --request GET 'http://localhost:8000/api/test/unsecured' \
    --header 'Host: test-service'

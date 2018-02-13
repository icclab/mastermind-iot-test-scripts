#! /bin/bash

curl -X GET -H "Content-Type: application/json" -H "Fiware-service: myHome" \
-H "Fiware-servicepath: /environment" http://{$IOTA_EP}/iot/services 


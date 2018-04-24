#! /bin/bash

curl ${ORION_EP}/v2/entities/ColdRoom/attrs/temperature/value -s -S \
    --header 'Content-Type: text/plain' \
    -X PUT -d 18.5

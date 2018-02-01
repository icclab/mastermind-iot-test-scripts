#! /bin/bash

curl ${ORION_EP}/v2/entities/Room1/attrs/temperature/value -s -S \
    --header 'Content-Type: text/plain' \
    -X PUT -d 28.5

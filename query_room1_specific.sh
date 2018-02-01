#! /bin/bash

curl "http://${ORION_EP}/v2/entities/Room1?options=values&attrs=temperature,pressure" -s -S  \
    --header 'Accept: application/json' | python -mjson.tool

#! /bin/bash

curl "http://${ORION_EP}/v2/entities/ColdRoom?options=values&attrs=temperature,humidity" -s -S  \
    --header 'Accept: application/json' | python -mjson.tool

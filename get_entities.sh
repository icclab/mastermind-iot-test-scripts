#! /bin/bash

curl http://${ORION_EP}/v2/entities -s -S --header 'Accept: application/json' | python -mjson.tool

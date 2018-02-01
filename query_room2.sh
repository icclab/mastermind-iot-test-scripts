#! /bin/bash
curl http://${ORION_EP}/v2/entities/Room2?type=Room -s -S  \
    --header 'Accept: application/json' | json_pp

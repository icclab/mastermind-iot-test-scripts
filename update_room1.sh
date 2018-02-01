#! /bin/bash

curl ${ORION_EP}/v2/entities/Room1/attrs -s -S --header 'Content-Type: application/json' \
     -X PATCH -d @- <<EOF
{
  "temperature": {
    "value": 26.5,
    "type": "Float"
  },
  "pressure": {
    "value": 763,
    "type": "Float"
  }
}
EOF
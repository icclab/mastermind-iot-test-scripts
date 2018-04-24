#! /bin/bash

curl ${ORION_EP}/v2/entities/ColdRoom/attrs -s -S --header 'Content-Type: application/json' \
     -X PATCH -d @- <<EOF
{
  "temperature": {
    "value": 17,
    "type": "Float"
  },
  "humidity": {
    "value": 20,
    "type": "Integer"
  }
}
EOF
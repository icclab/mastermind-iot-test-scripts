#! /bin/bash

curl http://${ORION_EP}/v2/entities -s -S --header 'Content-Type: application/json' -d @- <<EOF
{
  "id": "Room2",
  "type": "Room",
  "temperature": {
    "value": 21,
    "type": "Float"
  },
  "pressure": {
    "value": 711,
    "type": "Integer"
  }
}
EOF

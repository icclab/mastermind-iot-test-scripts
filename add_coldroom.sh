#! /bin/bash

curl http://${ORION_EP}/v2/entities -s -S --header 'Content-Type: application/json' -d @- <<EOF
{
  "id": "ColdRoom",
  "type": "Room",
  "temperature": {
    "value": 16,
    "type": "Float"
  },
  "humidity": {
    "value": 15,
    "type": "Integer"
  }
}
EOF

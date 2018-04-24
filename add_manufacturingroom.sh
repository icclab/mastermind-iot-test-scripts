#! /bin/bash

curl http://${ORION_EP}/v2/entities -s -S --header 'Content-Type: application/json' -d @- <<EOF
{
  "id": "ManufacturingRoom",
  "type": "Room",
  "temperature": {
    "value": 25,
    "type": "Float"
  },
  "humidity": {
    "value": 50,
    "type": "Integer"
  }
}
EOF

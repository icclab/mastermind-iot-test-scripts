#! /bin/bash

curl -X POST -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{ 
    "devices": [ 
        { 
            "device_id": "sensor01", 
            "entity_name": "ColdRoomSensor", 
            "entity_type": "TempSensor",
            "attributes": [
              {
                "name": "temperature",
                "type": "degrees"
              },
              {
                "name": "humidity",
                "type": "percentage"
              }
            ]
        }
    ]
}

' http://{$IOTA_EP}/iot/devices

#! /bin/bash

curl -X POST -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{ 
    "devices": [ 
        { 
            "device_id": "sensor01", 
            "entity_name": "RosesPot", 
            "entity_type": "potSensor",
            "attributes": [
              {
                "name": "humidity",
                "type": "degrees"
              },
              {
                "name": "happiness",
                "type": "subjective"
              }
            ]
        }
    ]
}

' http://{$IOTA_EP}/iot/devices

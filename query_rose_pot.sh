#! /bin/bash

curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -d '{
    "entities": [
        {
            "isPattern": "false",
            "id": "RosesPot",
            "type": "potSensor"
        }
    ]
}' http://{$ORION_EP}/v1/queryContext

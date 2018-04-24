#! /bin/bash

curl -X POST -H "Fiware-Service: myHome" -H "Fiware-ServicePath: /environment" -H "Content-Type: application/json" -H "Cache-Control: no-cache" -d '{ 
    "services": [ 
      {
          "resource": "",
          "apikey": "AAFF9977",
          "type": "TempSensor"
      }
    ]
}

' http://{$IOTA_EP}/iot/services

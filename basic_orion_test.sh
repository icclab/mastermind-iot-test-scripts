#! /bin/bash

curl http://{$ORION_EP}/v2

# Should return the endpoints offered by orion...something like...
#  {"entities_url":"/v2/entities","types_url":"/v2/types","subscriptions_url":"/v2/subscriptions","registrations_url":"/v2/registrations"}⏎ 


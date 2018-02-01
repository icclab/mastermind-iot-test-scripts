#! /bin/bash

curl -v http://${ORION_EP}/v2/subscriptions -s -S | json_pp

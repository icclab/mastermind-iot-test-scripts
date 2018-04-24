#! /bin/bash

echo "*** Initializing variables..."
source ./setup.sh

echo
echo "*** Adding cold room..."
./add_coldroom.sh

echo
echo "*** Querying cold room..."
./query_coldroom.sh

echo
echo "*** Querying specific items from cold room..."
./query_coldroom_specific.sh

echo
echo "*** Adding Manufacturing room..."
./add_manufacturingroom.sh

echo
echo "*** Querying Manufacturing room..."
./query_manufacturingroom.sh

echo
echo "*** Getting entities from Context Broker..."
./get_entities.sh

echo
echo "*** Updating Cold room data..."
./update_coldroom.sh

echo
echo "*** Querying Cold room (updated)..."
./query_coldroom.sh

echo
echo "*** Updating Cold room attribute..."
./update_coldroom_attr.sh

echo
echo "*** Querying Cold room..."
./query_coldroom.sh

echo
echo "*** Provisioning Cold Room Temp sensor (service)..."
./provision_coldroom_service.sh

echo
echo "*** Provisioning Cold Room Temp sensor (device)..."
./provision_coldroom_device.sh

echo
echo "*** Getting registered devices..."
./get_devices.sh

echo
echo "*** Querying ColdRoom device..."
./query_coldroom_sensor.sh

echo
echo "*** A bit tired...having a little rest..."
sleep 10

mosquitto_pub -h ${IOTA_HOST} -t /AAFF9977/sensor01/attrs/temperature -m '21'
mosquitto_pub -h ${IOTA_HOST} -t /AAFF9977/sensor01/attrs/humidity -m '35'

echo
echo "*** Querying Cold Room device again..."
./query_coldroom_sensor.sh

echo "Finished...if the devices were not updated correctly, you may need to run the mosquitto_pub commands again..."


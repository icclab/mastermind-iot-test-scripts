#! /bin/bash

echo "*** Initializing variables..."
source ./setup.sh

echo
echo "*** Adding room 1..."
./add_room1.sh

echo
echo "*** Querying room 1..."
./query_room1.sh

echo
echo "*** Querying specific item from room 1..."
./query_room1_specific.sh

echo
echo "*** Adding room 2..."
./add_room2.sh

echo
echo "*** Querying room 2..."
./query_room2.sh

echo
echo "*** Getting entities..."
./get_entities.sh

echo
echo "*** Updating room 1..."
./update_room1.sh

echo
echo "*** Querying room 1..."
./query_room1.sh

echo
echo "*** Updating attribute..."
./update_attribute.sh

echo
echo "*** Querying room 1..."
./query_room1.sh

echo
echo "*** Provisioning pot service..."
./provision_pot_service.sh

echo
echo "*** Provisioning pot device..."
./provision_pot_device.sh

echo
echo "*** Getting devices..."
./get_devices.sh

echo
echo "*** Querying device..."
./query_rose_pot.sh

echo
echo "*** A bit tired...having a little rest..."
sleep 10

mosquitto_pub -h ${IOTA_HOST} -t /AAFF9977/sensor01/attrs/humidity -m '76'
mosquitto_pub -h ${IOTA_HOST} -t /AAFF9977/sensor01/attrs/happiness -m 'Delirious'

echo
echo "*** Querying device..."
./query_rose_pot.sh

echo "Finished...if the devices were not updated correctly, you may need to run the mosquitto_pub commands again..."


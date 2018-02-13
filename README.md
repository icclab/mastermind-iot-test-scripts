A simple set of tests for a FIWARE IoT Agent based on:

https://fiware-orion.readthedocs.io/en/master/user/walkthrough_apiv2/index.html

This is still an evolving work in progress, so it documentable at this point.

Look in execute_all.sh to see the workflow.

This currently does not include the subscription functionality; this will be added
real soon now.

-----

OLD CONTENT (mostly replicated in the execute_all.sh script)

Follow the following steps:

- ./setup.sh
- ./basic_orion_test.sh

- ./add_room1.sh
- ./query_room1.sh
- ./query_room1_specific.sh

- ./add_room2.sh
- ./query_room2.sh

- ./get_entities.sh

- ./update_room1.sh 
- ./query_room1.sh

- ./update_attribute.sh
- ./query_room1.sh

- (modify create_subscriptions_room1.sh to give it a valid endpoint for the subscriptions - you could use requestbin, for example - you may need to ensure that the service can access the endpoint...)
- ./create_subscription_room1.sh
-- (this will result in a call from the context broker to the endpoint specified in the subscription if it is reachable)

- ./get_subscriptions.sh
-- (note you should see the subscription as active if the context broker has been able to communicate with the service properly)

- ./update_pressure_room1.sh
-- (this should trigger a subscription)


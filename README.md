# Mastermind IOT Test Scripts
A simple set of scripts to test a Mastermind deployment of mongo, orion context broker and the IoT Agent. This is based on:

https://fiware-orion.readthedocs.io/en/master/user/walkthrough_apiv2/index.html

Follow these steps:

- Modify `setup.sh`, changing the environment variables to point to the correct hosts

- `./setup.sh`
- `./basic_orion_test.sh`

- `./add_room1.sh`
- `./query_room1.sh`
- `./query_room1_specific.sh`

- `./add_room2.sh`
- `./query_room2.sh`

- `./get_entities.sh`

- `./update_room1.sh` 
- `./query_room1.sh`

- `./update_attribute.sh`
- `./query_room1.sh`

- (modify `create_subscriptions_room1.sh` to give it a valid endpoint for the subscriptions - you could use requestbin, for example - you may need to ensure that the service can access the endpoint...)
- `./create_subscription_room1.sh`
-- (this will result in a call from the context broker to the endpoint specified in the subscription if it is reachable)

- `./get_subscriptions.sh`
-- (note you should see the subscription as active if the context broker has been able to communicate with the service properly)

- `./update_pressure_room1.sh`
-- (this should trigger a subscription)






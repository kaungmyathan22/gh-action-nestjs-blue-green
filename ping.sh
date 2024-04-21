#!/bin/bash

# Define the endpoint URL
ENDPOINT="http://localhost:8080/"

# Set the number of times to ping the endpoint
NUM_PINGS=1000

# Loop for the specified number of times
for ((i=1; i<=$NUM_PINGS; i++)); do
    # Ping the endpoint
    if curl -f "$ENDPOINT"; then
        echo " $i"
        # echo "\nPing $i: Endpoint is reachable."
    else
        echo "Ping $i: Endpoint is not reachable."
    fi
    # sleep 1
done

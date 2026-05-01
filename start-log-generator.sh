#!/bin/bash

# start a container that writes a sample log and stays alive

docker run -dt 
--name log-generator 
-v transaction-logs:/var/log/app 
alpine 
sh -c "echo 'Transaction #1' > /var/log/app/access.log && sleep 1000"

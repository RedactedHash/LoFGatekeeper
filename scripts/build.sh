#!/bin/bash
docker-compose build
if [ $? -eq 0 ]; then
    docker tag lofgatekeeper:latest gatekeeper.redactedhash.io:5000/lofgatekeeper:latest
    docker push gatekeeper.redactedhash.io:5000/lofgatekeeper:latest
fi
docker-compose rm -f -s
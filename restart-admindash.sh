#!/bin/bash

echo "Attempting to restart the admin dash... via docker-compose or docker compose... please ignore errors and warnings. See the end of the script for details, and check webpage."

# Old Docker
docker-compose down
docker-compose up -d

# New Docker
docker compose down
docker compose up -d

docker ps -a | grep -i admindash2-app

echo "Attempted to launch it via docker-compose or docker compose...

So now at this point it should be running as localhost:5001"
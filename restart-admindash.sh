#!/bin/bash

echo "Attempting to restart the admin dash... via docker-compose or docker compose... please ignore errors and warnings. See the end of the script for details, and check webpage."

# Old Docker
sudo docker-compose down
sudo docker-compose up -d

# New Docker
sudo docker compose down
sudo docker compose up -d

sudo docker ps -a | grep -i admindash2-app

echo "Attempted to launch it via docker-compose or docker compose...

So now at this point it should be running as http://$(hostname -I | awk '{print $1}'):5001/"
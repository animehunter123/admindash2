#!/bin/bash

echo "Building the docker container admindash2-app:1.0 now..."
docker build -t admindash2-app:1.0 .

echo "To run it, use the ./restart-admindash.sh script or docker-compose up -d"
echo "To stop it, use the ./stop-admindash.sh script or docker-compose down"
echo "To see the logs, use the ./logs-admindash.sh script or docker-compose logs -f"

echo "Script complete."
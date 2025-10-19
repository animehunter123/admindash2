#!/bin/bash

echo "Admindash2: Attempting to restart the admindash webpage...
This is via docker-compose or docker compose...

STARTING..."

# Old Docker
sudo docker-compose down 2>/dev/null
sudo docker-compose up -d 2>/dev/null
/usr/local/bin/docker-compose down 2>/dev/null
/usr/local/bin/docker-compose up -d 2>/dev/null

# New Docker
sudo docker compose down 2>/dev/null
sudo docker compose up -d 2>/dev/null

# Searching to see if it started to inform the user
sudo docker ps -a | grep -i admindash2-app

echo "OK...

Attempted to launch it via docker-compose or docker compose (all possible commands from 20.04>rocky9)...

So now at this point it should be running as http://$(hostname -I | awk '{print $1}'):5001/

Script complete."
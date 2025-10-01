#!/bin/bash

# Old Docker method
docker-compose down
docker stop admindash2 # Just in case

# New Docker method
docker compose down
docker stop admindash2
#!/bin/bash

# Old Docker method
sudo docker-compose down
sudo docker stop admindash2 # Just in case

# New Docker method
sudo docker compose down
sudo docker stop admindash2
#!/bin/bash

# Old Docker
docker-compose down
docker-compose up -d

# New Docker
docker compose down
docker compose up -d
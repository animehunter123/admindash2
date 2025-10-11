#!/bin/bash

echo "Please make sure to actually read the official documentation before running this script
https://docs.docker.com/engine/install/ubuntu/
"

if ! command -v docker &>/dev/null ; then 
  echo Docker not installed ; 
  apt update
  apt install -y docker.io docker-compose 
fi

echo "docker command now is installed, installing legacy docker-compose as well for wsl mitigation."
pip3 install docker-compose --break-system-packages

echo "Install complete."
if ! command -v docker &>/dev/null ; then 
  echo Docker not installed ; 
  apt update
  apt install -y docker.io docker-compose 
fi

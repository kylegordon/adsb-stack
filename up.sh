
export DOCKER_HOST=ssh://bagpuss@172.24.32.11
docker compose -f docker-compose-sdr.yaml up -d ultrafeeder Watchtower
export DOCKER_HOST=ssh://bagpuss@172.24.32.13
docker compose up -d piaware fr24feed pfclient opensky graphs1090

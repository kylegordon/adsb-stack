export DOCKER_HOST=ssh://bagpuss@172.24.32.11
docker compose -f docker-compose-sdr.yaml pull ultrafeeder readsb Watchtower
export DOCKER_HOST=ssh://bagpuss@172.24.32.13
docker compose pull

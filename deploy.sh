#!/bin/bash
if [[ -z $1 ]];
then
	echo "No parameter passed"
	exit
else
	echo "Parameter $1 passed"
fi

if [ $1 != "pull" ] && [ $1 != "up" ]
then
	echo "Parameter must be 'pull' or 'up'"
	exit
fi

export DOCKER_HOST=ssh://bagpuss@172.24.32.11
docker compose -f docker-compose-sdr.yaml $1 ultrafeeder Watchtower
export DOCKER_HOST=ssh://bagpuss@172.24.32.13
docker compose $1 piaware fr24feed pfclient opensky graphs1090

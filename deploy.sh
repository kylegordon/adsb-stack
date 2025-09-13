#!/bin/bash

source .env

if [[ -z $1 ]];
then
	echo "No parameter passed"
	exit 1
else
	echo "Parameter $1 passed"
fi

if [ "$1" != "pull" ] && [ "$1" != "up" ]
then
	echo "Parameter must be 'pull' or 'up'"
	exit 1
fi

export DOCKER_HOST=ssh://${SSHUSER}@${SDRHOST}
docker compose -f docker-compose-sdr.yaml $1 ultrafeeder Watchtower
export DOCKER_HOST=ssh://${SSHUSER}@${MAINHOST}
docker compose $1 piaware fr24feed pfclient opensky graphs1090

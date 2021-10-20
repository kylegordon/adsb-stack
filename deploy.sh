docker-compose -H ssh://pi@planepi pull readsb
docker-compose -H ssh://bagpuss@homeauto.vpn.glasgownet.com pull piaware adsbexchange fr24feed pfclient opensky flightairmap graphs1090

docker-compose -H ssh://pi@planepi up -d readsb
docker-compose -H ssh://bagpuss@homeauto.vpn.glasgownet.com up -d piaware adsbexchange fr24feed pfclient opensky flightairmap graphs1090

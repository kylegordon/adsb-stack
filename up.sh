
docker-compose -H ssh://pi@planepi up -d readsb netdata
docker-compose -H ssh://bagpuss@homeauto.vpn.glasgownet.com up -d piaware adsbexchange fr24feed pfclient opensky flightairmap graphs1090


#!/bin/sh
# Create necessary Docker-Networks
docker network create data_backend

# Start all necessary containers
docker-compose -f ~/revpi-weiss/apps/portainer/docker-compose.yaml up -d                                          # heimdall
docker-compose -f ~/revpi-weiss/apps/influxdb/docker-compose.yaml up -d                                          # heimdall
docker-compose -f ~/revpi-weiss/apps/grafana/docker-compose.yaml up -d                                          # heimdall
docker-compose -f ~/revpi-weiss/apps/nodered/docker-compose.yaml up -d                                          # heimdall

echo "Visite http://$(hostname -I | cut -d' ' -f1):1880 for Node-Red Config"
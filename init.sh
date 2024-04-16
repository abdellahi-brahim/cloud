#!/bin/bash

sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update && sudo apt-get install -y docker-ce docker-compose

docker network inspect webproxy >/dev/null 2>&1 || docker network create webproxy

docker-compose -f portainer-compose.yml up -d
docker-compose -f nginx-proxy-manager-compose.yml up -d

sudo cp portainer.service /etc/systemd/system/portainer.service
sudo cp nginx-proxy-manager.service /etc/systemd/system/nginx-proxy-manager.service
sudo systemctl daemon-reload
sudo systemctl enable portainer.service nginx-proxy-manager.service
sudo systemctl start portainer.service nginx-proxy-manager.service

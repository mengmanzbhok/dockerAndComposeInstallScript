#!/bin/bash
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker root

curl -L https://get.daocloud.io/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` > ~/docker-compose
sudo mv ~/docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo service docker restart

docker -v
docker-compose -v
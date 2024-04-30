#!/bin/bash


apt-get update -y
apt-get install tmux

curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker root

curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo mv ~/docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo service docker restart

docker -v
docker-compose -v



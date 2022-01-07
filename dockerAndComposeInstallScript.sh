#!/bin/bash
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker root

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo mv ~/docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo service docker restart

docker -v
docker-compose -v

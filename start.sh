#!/bin/sh

echo $PWD
#sudo wget -qO- https://get.docker.com/ | sh
#sudo service docker start
sudo cp $PWD/daemon.json /etc/docker/
sudo chmod a+rwx /etc/docker/daemon.json
echo /etc/docker/daemon.json
sudo docker build .

sudo docker run -p 1935:1935 -p 1985:1985 -p 8080:8080 --restart=always srs 

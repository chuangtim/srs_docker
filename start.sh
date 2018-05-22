#!/bin/sh

basepath=$(cd `dirname $0`; pwd)
cd basepath
sudo wget -qO- https://get.docker.com/ | sh
sudo service docker start
sudo cp daemon.json /etc/docker/
sudo docker build srs .

sudo docker run -p 1935:1935 -p 1985:1985 -p 8080:8080 --restart=always srs 

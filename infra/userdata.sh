#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo docker pull scarreiraaws/ejercicio
sudo docker run -d -p 80:80 scarreiraaws/ejercicio

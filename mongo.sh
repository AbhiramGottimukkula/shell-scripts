#!/bin/bash
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927\n",
echo "\deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse\" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org
service mongod start
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf
service mongod restart
#!/bin/bash
apt-get update
apt-get install -y default-jre
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
apt-get install -y apt-transport-https
echo \"deb https://artifacts.elastic.co/packages/6.x/apt stable main\" | tee -a /etc/apt/sources.list.d/elastic-6.x.list
apt-get update 
apt-get install elasticsearch
sed -i 's/#network.host: 192.168.0.1/network.host: 0.0.0.0/g' /etc/elasticsearch/elasticsearch.yml
service elasticsearch restart
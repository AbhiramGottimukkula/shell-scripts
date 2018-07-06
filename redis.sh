#!/bin/bash
apt-get update
apt-get install -y redis-server
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/redis/redis.conf
service redis restart
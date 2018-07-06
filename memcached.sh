#!/bin/bash
apt-get update
apt-get install memcached
apt-get install -y libmemcached-tools
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/memcached.conf
service memcached restart
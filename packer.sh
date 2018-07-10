#!/bin/bash
curl -O https://releases.hashicorp.com/packer/0.12.2/packer_0.12.2_linux_amd64.zip
apt install -y unzip
unzip -d /usr/local/bin packer_0.12.2_linux_amd64.zip
packer --version
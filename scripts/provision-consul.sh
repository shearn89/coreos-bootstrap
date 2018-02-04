#!/bin/bash

REPOSERVER="http://192.168.56.1:8000"

CONSUL_FILENAME="consul_1.0.3_linux_amd64.zip"

curl -O "${REPOSERVER}/${CONSUL_FILENAME}"
unzip "${CONSUL_FILENAME}"

sudo mkdir -p /opt/bin
sudo mv consul /opt/bin/

sudo mkdir -p /etc/consul.d
sudo mkdir -p /var/lib/consul

sudo useradd -r consul
sudo chown -R consul:consul /var/lib/consul /etc/consul.d

sudo cat <<EOF>>/etc/hosts
10.0.2.4	coreos-01
10.0.2.5	coreos-02
10.0.2.6	coreos-03
EOF

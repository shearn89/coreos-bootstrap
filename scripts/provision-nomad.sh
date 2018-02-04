#!/bin/bash

REPOSERVER="http://192.168.56.1:8000"

NOMAD_FILENAME="nomad_0.7.1_linux_amd64.zip"

curl -O "${REPOSERVER}/${NOMAD_FILENAME}"
unzip "${NOMAD_FILENAME}"

sudo mkdir -p /opt/bin
sudo mv nomad /opt/bin/

sudo mkdir -p /etc/nomad.d
sudo mkdir -p /var/lib/nomad

sudo useradd -r nomad
sudo chown -R nomad:nomad /var/lib/nomad /etc/nomad.d

#!/bin/bash -e

REPOSERVER="http://192.168.56.1:8000"

OCTET=$(ip a | grep global | awk {'print $2'} | awk -F. {'print $4'} | awk -F/ {'print $1'})

curl -O "${REPOSERVER}/cloud-config/coreos-$OCTET.json"
sudo coreos-install -d /dev/sda -i coreos-$OCTET.json -b "${REPOSERVER}/images"

sudo eject
reboot

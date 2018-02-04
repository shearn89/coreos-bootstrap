BIND_IP=192.168.56.102
# sudo -u consul /opt/bin/consul agent -server -bootstrap-expect=3 -data-dir=/var/lib/consul -node=$(hostname -s) -enable-script-checks=true -config-dir=/etc/consul.d -bind=$BIND_IP -join 192.168.56.102 -ui
sudo -u consul /opt/bin/consul agent -server -bootstrap-expect=3 -data-dir=/var/lib/consul -node=$(hostname -s) -enable-script-checks=true -config-dir=/etc/consul.d

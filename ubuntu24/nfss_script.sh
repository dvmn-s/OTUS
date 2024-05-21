#!/bin/bash
apt update -y
apt upgrade -y
apt install nfs-kernel-server -y
sudo mkdir -p /srv/share/upload
sudo chown -R nobody:nogroup /srv/share
sudo chmod 0777 /srv/share/upload
sudo cat << EOF > /etc/exports
/srv/share 192.168.56.11(rw,sync,root_squash)
EOF


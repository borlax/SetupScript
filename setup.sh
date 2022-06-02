#!/bin/sh
#adduser --gecos "" --disabled-password borlax;
adduser --gecos "" borlax;

#mkdir /home/borlax;

cp -r /root/.ssh/ /home/borlax/;

chown -R borlax:borlax /home/borlax/.ssh;

echo "borlax ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers;

sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config;
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config;
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config;

systemctl restart sshd;

#apt install nftaples -y;

#sudo nft add rule filter input dport 22 ip saddr 45.77.103.243 accept;

#sudo nft add chain family filter input '{ policy drop; }'

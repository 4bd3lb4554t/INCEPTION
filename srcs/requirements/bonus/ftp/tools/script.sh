#!/bin/bash


apt-get install shadow -y

apt-get install sudo -y



useradd -m abquaoub 

echo "abquaoub:0000" | chpasswd


chown abquaoub:abquaoub /var/www/html/wordpress

chmod a-w /var/www/html/wordpress

chmod 755 /var/www/html/wordpress


mkdir -p /var/run/vsftpd/empty


vsftpd /etc/vsftpd.conf


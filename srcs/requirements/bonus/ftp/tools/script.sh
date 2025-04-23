#!/bin/bash

#  create user and change owner of /var/www/... to new user and give him permissions
useradd -m abquaoub

echo "abquaoub:${PASS_USER}" | chpasswd

chown -R abquaoub:abquaoub /var/www/html/wordpress

chmod 740 /var/www/html/wordpress


vsftpd /etc/vsftpd.conf


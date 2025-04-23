#!/bin/bash

#  create user and change owner of /var/www/... to new user and give him permissions
useradd -m ${USER_WP}

echo "${USER_WP}:${PASS_WP}" | chpasswd

chown -R ${USER_WP}:${USER_WP} /var/www/html/wordpress

chmod 740 /var/www/html/wordpress


vsftpd /etc/vsftpd.conf


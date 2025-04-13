#!/bin/bash


sed -i 's/bind-address            = 127.0.0.1/bind-address  = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

/etc/init.d/mariadb start

mysql_secure_installation << eof
root
n
n
y
y
y
n
eof


mysql -u root  << eof
CREATE DATABASE WP;
CREATE USER 'abquaoub'@'%' IDENTIFIED BY '0000';
GRANT ALL PRIVILEGES ON WP.* TO 'abquaoub'@'%';
FLUSH PRIVILEGES;
eof


tail -f /dev/null 
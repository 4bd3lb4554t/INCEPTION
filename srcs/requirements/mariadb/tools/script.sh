#!/bin/bash

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
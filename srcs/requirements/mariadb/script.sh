#!/bin/bash

apt update &&  apt upgrade -y

apt install mariadb-server  -y

mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld


mysqld &

sleep 1

echo 

mysql_secure_installation << eof
root
n
n
y
y
y
n
eof

mysql -u root << eof
CREATE DATABASE WP2;
CREATE USER 'abquaoub'@'localhost' IDENTIFIED BY '0000';
GRANT ALL PRIVILEGES ON WP2.* TO 'abquaoub'@'localhost';
FLUSH PRIVILEGES;
eof

while true; do
    echo "This is an infinite loop"
    sleep 1  
done





#!/bin/bash

sed -i 's/bind-address            = 127.0.0.1/bind-address  = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf


/etc/init.d/mariadb start
mysql -u root < /usr/bin/user.sql
/etc/init.d/mariadb stop


mysqld_safe 

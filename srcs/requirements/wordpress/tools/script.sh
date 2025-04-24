#!/bin/bash

sleep 5

sed -i 's/^listen = .*/listen = 0.0.0.0:9000/' /etc/php/8.2/fpm/pool.d/www.conf

wget https://wordpress.org/latest.zip

unzip -o latest.zip -d /var/www/html

rm -rf latest.zip

cd /var/www/html/wordpress



curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar wp



mv /usr/wp-config.php  /var/www/html/wordpress/


sed -i "s/database_name_here/$DB_WP/" /var/www/html/wordpress/wp-config.php
sed -i "s/localhost/$HOST_WP/" /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/$USER_WP/" /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/$PASS_WP/" /var/www/html/wordpress/wp-config.php

sed -i "s/host_redis/$HOST_REDIS/" /var/www/html/wordpress/wp-config.php
sed -i "s/port_redis/$PORT_REDIS/" /var/www/html/wordpress/wp-config.php



./wp core install  --path="/var/www/html/wordpress"  --url="https://abquaoub.42.fr"  --title="First Page in Wordpress" --admin_user=$USER_01  --admin_password=$PASS_USER_01  --admin_email="abdelbassat@example.com"  --locale=fr_FR  --allow-root
./wp user create $USER_02 admin@example.com --role=editor --user_pass=$PASS_USER_02  --allow-root
./wp theme install astra --activate --allow-root


./wp plugin install redis-cache --activate --allow-root
./wp redis enable --allow-root

rm -rf ./wp

php-fpm8.2 -F